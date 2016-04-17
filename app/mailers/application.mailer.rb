class ApplicationMailer < ActionMailer::Base
  default from: "robot@hello.com"
  layout 'mailer'
  default_url_options[:host] = "http://juiceme.herokuapp.com"
end
