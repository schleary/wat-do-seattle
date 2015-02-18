require 'dotenv'
Dotenv.load
# config valid only for current version of Capistrano
lock '3.3.5'

set :application, 'wat-do-seattle'
set :repo_url, 'git@github.com:schleary/wat-do-seattle.git'

set :use_sudo, false

set :deploy_to, '/var/www/wat-do-seattle'





# Specify the server that Resque will be deployed on. If you are using Cap v3
# and have multiple stages with different Resque requirements for each, then
# these __must__ be set inside of the applicable config/deploy/... stage files
# instead of config/deploy.rb:
# role :resque_worker, "wat-do-seattle.com"
# role :resque_scheduler, "wat-do-seattle.com"
#
# set :workers, { "my_queue_name" => 2 }
#
#
# set :resque_environment_task, true
# after "deploy:restart", "resque:restart"





# We default to storing PID files in a tmp/pids folder in your shared path, but
# you can customize it here (make sure to use a full path). The path will be
# created before starting workers if it doesn't already exist.
set :resque_pid_path, -> { File.join(shared_path, 'tmp', 'pids') }

# Uncomment this line if your workers need access to the Rails environment:
# set :resque_environment_task, true

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, fetch(:linked_files, []).push('config/database.yml')
set :linked_files, %w{.env}

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('bin', 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
set :default_env, { "S3_KEY" => ENV["S3_KEY"], "S3_SECRET" => ENV["S3_SECRET"] }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
