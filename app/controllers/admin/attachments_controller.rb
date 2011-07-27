class Admin::AttachmentsController < Admin::AdminController
  def crop(image)
    # image = Image.find(params[:id])
    image_data = Net::HTTP.get_response(URI.parse(image.image.url(:big))).body
    orig_img = Magick::ImageList.new
    orig_img.from_blob(image_data)

    args = [params[:img_x].to_i, params[:img_y].to_i, params[:img_width].to_i, params[:img_xheight].to_i]
    orig_img.crop!(*args)

    tmp_img = Tempfile.new("image_data")
    # orig_img.format = "png"
    tmp_img.write(orig_img.to_blob)
    image.image = tmp_img
    tmp_img.close

    image.image.reprocess!
    image.save
  end
  
  def index
    super
    if params["type"]
      @resources = @all_resources.where("attachment_content_type like '%#{params[:type]}%'")
      @resources.paginate(:page => params[:page], :per_page => 20)
    end
  end
end