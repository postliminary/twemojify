require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
end

desc "Run tests"
task :default => :test

desc "Open an irb session preloaded with this library"
task :console do
  sh "irb -rubygems -I lib -r twemojify.rb"
end