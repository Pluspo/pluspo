require File.expand_path("#{File.dirname(__FILE__)}/environment")
rails_env = ENV['RAILS_ENV'] || :development
set :environment, rails_env
set :output, Rails.root.join('log/cron.log')

every 1.month do
  rake "pluspo:create_next_month_schedules"
end
