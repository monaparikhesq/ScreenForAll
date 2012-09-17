class NotificationsMailer < ActionMailer::Base

  default :from => "email.screenforall@gmail.com"
  default :to => "email.screenforall@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "Contact")
  end
end