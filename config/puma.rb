projects_folder = '/data/projects'
app_name = 'gem_server'

app_root = File.join(projects_folder, app_name)
log_dir = File.join(app_root, 'log')
tmp_dir = File.join(app_root, 'tmp')
puma_env = 'production'

directory app_root
tag app_name

workers 2
threads 4,8

port 8888
worker_timeout 10
environment puma_env
daemonize true

pidfile File.join(tmp_dir, 'puma.pid')
state_path File.join(tmp_dir, 'puma.state')
stdout_redirect "#{log_dir}/puma.log", "#{log_dir}/#{puma_env}.log", true

preload_app!
