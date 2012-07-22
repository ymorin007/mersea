class NotificationsMailer < ActionMailer::Base
  
  default :from => "ymorin007@gmail.com"
  default :to => "ymorin007@gmail.com"
  
   def new_message(message)
    @message = message
    mail(:subject => "New message from Mersea - #{message.subject}")
  end
  
end
