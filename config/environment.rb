# This is an _environment variable_ that is used by some of the Rake tasks to determine
# if our application is running locally in development, in a test environment, or in production
ENV['RACK_ENV'] ||= "production"

require 'active_record'
# Require in Gems
require 'bundler/setup'
Bundler.require(:default, ENV['RACK_ENV'])


ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['RACK_ENV']}.sqlite"
 )

# Require in all files in 'app' directory
require_all 'app'
