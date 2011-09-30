# -*- ruby -*-

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.rspec_opts = ENV['RSPEC_OPTS']
  end
rescue LoadError
  task :spec do
    abort 'Run `gem install rspec` to install RSpec'
  end
end

task :test => :spec
task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "Rails Block Labels"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
