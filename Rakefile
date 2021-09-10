PIDFILE = 'rack.pid'
require 'byebug'
task :start do
    port = ENV['PORT'] || 9999
    sh "rackup config.ru -o 0.0.0.0 -p #{port} -D -P #{PIDFILE}"
end

task :stop do
    if File.exists?(PIDFILE)
        sh "kill -9  $(cat #{PIDFILE})"
        sh "rm #{PIDFILE}"
    end
end

task :upgrade do
    sh 'git pull origin main'
    sh 'bundle install'
    sh 'rake stop'
    sh 'rake start'
end