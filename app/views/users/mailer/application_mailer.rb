class ApplicationMailer < ActionMailer::Base
  default from: 'Yarnn.FM <do-not-reply@yarnn.fm>'
  layout 'users/mailer'
end