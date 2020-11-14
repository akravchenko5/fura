class ApplicationMailer < ActionMailer::Base
  default from: 'no-reply@fura-me.herokuapp.com'
  layout 'mailer'
end
