class UserMailer < ActionMailer::Base
  default :from => "email.screenforall@gmail.com"
  
  def registration_confirmation(user)
    @user = user
    mail(:to => "#{user.first_name} <#{user.email}>", :subject => "Registered")
  end
end