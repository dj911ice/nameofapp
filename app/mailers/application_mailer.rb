class ApplicationMailer < ActionMailer::Base.mail
	
  default (from: 'from@example.com', to: => 'to@domain.com',
 	:subject => "Welcome to My Awesome Site",
  :body => 'I am the email body').deliever_now
  layout 'mailer'
end
