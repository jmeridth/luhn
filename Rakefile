require 'rubygems'
require 'rspec/core/rake_task'

task :default => ['spec']

desc "Run all specs in spec directory"
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
  spec.rspec_opts = ['--color']
end
