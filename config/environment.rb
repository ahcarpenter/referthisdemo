# http://www.rubyinside.com/how-to-use-gmails-smtp-server-with-rails-394.html
# http://www.whatcodecraves.com/articles/2010/01/11/ruby_rails_gmail_smtp/
# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
ReferThisDemo::Application.initialize!
# Don't care if the mailer can't send
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.default_url_options = {:host => 'localhost:3000'}
# set delivery method to :smtp, :sendmail or :test
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.default :from => 'adoptahydrantsyracuse@gmail.com'