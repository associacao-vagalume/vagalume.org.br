#!/usr/bin/env ruby

require 'bundler'
require 'html-proofer'
require 'jekyll'
require 'rspec/core/rake_task'

task :default => :build

desc 'remove o site que foi gerado'
task :clean do
  rm_rf '_site'
end

desc 'compila o site chamando jekyll build'
task :build => [:clean] do
  jekyll 'build -q'
end

desc 'sobe o site localmente com jekyll serve'
task :preview => [:clean] do
  jekyll 'serve --watch -H 0.0.0.0'
end

desc 'Testa com o html-proofer se o html está bem formado'
task :test_html do
  options = {
    :assume_extension => true,
    :check_html => true,
    :disable_external => true,
    :log_level => :warn
  }

  HTMLProofer.check_directory('./_site', options).run
end

desc 'Executa os testes unitários'
RSpec::Core::RakeTask.new(:spec) do |t|
  puts 'Executando testes unitários'
  t.pattern = '_' + t.pattern
  t.verbose = false
end

desc 'Executa o teste de html e os testes unitários'
task :test => [:build, :test_html, :spec]

desc 'executa os testes de links externos'
task :integration => [:test] do |t|
  puts 'Executando testes de integração'
  options = {
    :assume_extension => true,
    :checks_to_ignore => ['ScriptCheck', 'ImageCheck'],
    :log_level => :warn
  }

  HTMLProofer.check_directory('./_site', options).run
end

def jekyll(directives = '')
  sh "jekyll #{directives}"
end
