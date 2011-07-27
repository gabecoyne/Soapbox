module ContentHelper
  def short_codes(content)
    content
  end
  def content(contentable,key)
    # get content body
    body = contentable.contents.find_by_key(key)
    # process short codes
    body = short_codes(body)
    # show edit link if logged in
    html = ""
    if user_logged_in?
      html << "edit link"
    end
    html << body
  end
end
