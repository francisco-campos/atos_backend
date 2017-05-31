class ApplicationMailer < ActionMailer::Base
  default from: 'contacto@atoslab.com'
  layout 'mailer'

  def send_welcome_email(user)
    @user = user
    mail(:to => @user.email, :subject => "Bienvenido!")
  end

end
