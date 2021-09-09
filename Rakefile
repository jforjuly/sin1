PIDFILE = 'rack.pid'
task :start do
    port = ENV['PORT'] || 9999
    sh "rackup config.ru -o 0.0.0.0 -p #{port} -D -P #{PIDFILE}"
end

task :stop do
    sh "kill -9  $(cat #{PIDFILE})"
end