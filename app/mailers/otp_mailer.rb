class OtpMailer < ApplicationMailer
	def welcome_email
    @user = params[:user]
    #@url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Mailer successfully executed')
  end
end
