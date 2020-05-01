desc 'builds the web application Docker image'
task :build do
	sh 'docker-compose build'
end

desc 'starts the web application and its dependencies in the foreground'
task :run do
	sh 'docker-compose up'
end

desc 'starts the web application and its dependencies in the background'
task :up do
	sh 'docker-compose up --detach'
end

desc 'stops the web application and its dependencies'
task :down do
	sh 'docker-compose down'
end

desc 'lists the running containers'
task :ps do
	sh 'docker-compose ps'
end
