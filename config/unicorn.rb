# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "/var/www/blog"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "/var/www/blog/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
stderr_path "/var/www/blog/log/unicorn.log"
stdout_path "/var/www/blog/log/unicorn.log"

# Unicorn socket
listen "/tmp/unicorn.blog.sock"
listen "/tmp/unicorn.blog.sock"

# Number of processes
# worker_processes 4
worker_processes 4

# Time-out
timeout 30


# #https://devcenter.heroku.com/articles/rails-unicorn (All except other URL sections)
# worker_processes Integer(ENV["WEB_CONCURRENCY"] || 3)
# timeout 15
# preload_app true

# before_fork do |server, worker|
#   Signal.trap 'TERM' do
#     puts 'Unicorn master intercepting TERM and sending myself QUIT instead'
#     Process.kill 'QUIT', Process.pid
#   end

#   if defined?(ActiveRecord::Base) and
#     ActiveRecord::Base.connection.disconnect!
#   end

#   #https://www.digitalocean.com/community/articles/how-to-optimize-unicorn-workers-in-a-ruby-on-rails-app
#   if defined?(Resque)
#     Resque.redis.quit
#     Rails.logger.info('Disconnected from Redis')
#   end

# end

# after_fork do |server, worker|
#   Signal.trap 'TERM' do
#     puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT'
#   end

#   if defined?(ActiveRecord::Base) and
#     ActiveRecord::Base.establish_connection
#   end

#   #https://www.digitalocean.com/community/articles/how-to-optimize-unicorn-workers-in-a-ruby-on-rails-app
#   if defined?(Resque)
#     Resque.redis = ENV['REDIS_URI']
#     Rails.logger.info('Connected to Redis')
#   end
# end