# deploy command
# unicorn -c config/unicorn.rb -D


app_dir = File.expand_path("../..", __FILE__)
# shared_dir = "#{app_dir}/shared"
working_directory app_dir

# Set unicorn options
worker_processes 1
preload_app true
timeout 30

# Set up socket location
#listen "#{shared_dir}/sockets/unicorn.sock", :backlog => 64
listen "#{app_dir}/tmp/sockets/unicorn.sock", :backlog => 64

# Logging
stderr_path "#{app_dir}/log/unicorn_stderr.log"
stdout_path "#{app_dir}/log/unicorn_stdout.log"

# Set master PID location
pid "#{app_dir}/tmp/pids/unicorn.pid"
