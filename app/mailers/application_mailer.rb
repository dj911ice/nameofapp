class ApplicationMailer < ActionMailer::Base.mail
	
  default (from: 'dj911ice@gmail.com', to: => 'to@domain.com',
 	:subject => "Welcome to My Awesome Site",
  :body => 'I am the email body').deliever_now
  layout 'mailer'
end
