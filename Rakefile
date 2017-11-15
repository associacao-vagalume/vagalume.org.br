#!/usr/bin/env ruby

require 'jekyll'
require 'bundler'

task :default => :build

task :preview => [:clean, :build ] do
  jekyll('serve --watch')
end

task :build do
  jekyll('build')
end

task :test => [:clean, :build ] do
  Dir.glob('./test/*_test.rb').each { |file| require file}
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
