#!/usr/bin/env puma

directory './'
rackup "./config.ru"

pidfile "./puma.pid"
state_path "./puma.state"

if ['staging', 'production'].include?(ENV['RAILS_ENV'])
  stdout_redirect './log/puma.error.log', './log/puma.access.log', true
  threads 4,16
  workers 4
end
environment ENV['RAILS_ENV'] || 'development'
ssl_bind '0.0.0.0', '8080', { key: './vagrant/server.key', cert: './vagrant/server.crt' }

preload_app!

on_restart do
  puts 'Refreshing Gemfile'
  ENV["BUNDLE_GEMFILE"] = "./Gemfile"
end

on_worker_boot do
  ActiveSupport.on_load(:active_record) do
    ActiveRecord::Base.establish_connection
  end
end
