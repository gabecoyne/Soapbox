class SoapboxMailer < ActionMailer::Base
  
  default :from => ("#{Setting[:site_name]} <#{Setting[:admin_email]}>" rescue "") , :return_path => (Setting[:admin_email] rescue "")
  
  def email_form(params)
    @params = params
    mail(params[:email])
  end
  
end
