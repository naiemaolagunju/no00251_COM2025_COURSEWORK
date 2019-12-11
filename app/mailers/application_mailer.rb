class ApplicationMailer < ActionMailer::Base
  default to: 'information@musiclibrary.com', from: 'customerservice@musiclibrary.com'
  layout 'mailer'
end
