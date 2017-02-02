class ApplicationMailer < ActionMailer::Base.mail
	
  default from: 'from@example.com'
  layout 'mailer'
end
