#!/usr/bin/env ruby

require 'bundler'
require 'html-proofer'
require 'jekyll'
require 'rspec/core/rake_task'

config_files = '_config.yml,_config.staging.yml' unless ENV['JEKYLL_ENV'] == 'production'
config = "--config #{config_files}" if config_files

RSpec::Core::RakeTask.new(:spec)

task :default => :build

task :preview => [:clean] do
  jekyll("serve --watch -H 0.0.0.0 #{config}")
end

task :build do
  jekyll("build #{config}")
end

task :test_html do
  options = {
    :assume_extension => true,
    :check_html => true,
    :disable_external => true
  }

  HTMLProofer.check_directory("./_site", options).run
end

task :test => [:clean, :build, :test_html, :spec] do
  Dir.glob('./test/*_test.rb').each { |file| require file}
end

task :acceptance => [:test] do
  options = {
    :assume_extension => true,
    :checks_to_ignore => ['ScriptCheck', 'ImageCheck']
  }

  HTMLProofer.check_directory("./_site", options).run
end

task :clean do
  cleanup
end

def jekyll(directives = '')
  sh 'jekyll ' + directives
end

# remove generated site
def cleanup
  sh 'rm -rf _site'
end
