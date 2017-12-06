#!/usr/bin/env ruby

require 'bundler'
require 'html-proofer'
require 'jekyll'
require 'rspec/core/rake_task'

task :default => :build

task :clean do
  sh 'rm -rf _site'
end

task :build => [:clean] do
  jekyll 'build'
end

task :preview => [:clean] do
  jekyll 'serve --watch -H 0.0.0.0'
end

# Testa com o html-proofer se o html está bem formado
task :test_html do
  options = {
    :assume_extension => true,
    :check_html => true,
    :disable_external => true
  }

  HTMLProofer.check_directory('./_site', options).run
end

# Executa os testes unitários com RSpec
RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = '_' + t.pattern
end

# Executa o teste de html e os testes unitários
task :test => [:build, :test_html, :spec]

# Testa com o html-proofer se os links estão válidos
task :acceptance => [:test] do
  options = {
    :assume_extension => true,
    :checks_to_ignore => ['ScriptCheck', 'ImageCheck']
  }

  HTMLProofer.check_directory('./_site', options).run
end

def jekyll(directives = '')
  sh "jekyll #{directives}"
end
