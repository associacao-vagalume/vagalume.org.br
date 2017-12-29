#!/usr/bin/env ruby

require 'bundler'
require 'html-proofer'
require 'jekyll'
require 'rspec/core/rake_task'

Rake::TaskManager.record_task_metadata = true

task :default => :build

desc 'Limpa o workspace'
task :clean do |t|
  puts t.full_comment
  rm_rf '_site'
  rm_rf '_report'
end

desc 'Compila o site'
task :build => [:clean] do |t|
  puts t.full_comment
  jekyll 'build -q'
end

desc 'Sobe o site localmente com jekyll serve'
task :preview => [:clean] do |t|
  puts t.full_comment
  jekyll 'serve --watch -H 0.0.0.0'
end

desc 'Testa com o html-proofer se o html está bem formado'
task :test_html => [:build] do |t|
  puts t.full_comment
  options = {
    :assume_extension => true,
    :check_html => true,
    :disable_external => true,
    :log_level => :warn
  }

  HTMLProofer.check_directory('./_site', options).run
end

desc 'Executa os testes unitários'
task :rspec => :build do |t|
  puts t.full_comment
  sh 'bundle', 'exec', 'rspec'
end

desc 'Executa os testes unitários e gera relatório'
task :rspec_report => :build do |t|
  puts t.full_comment
  sh 'bundle', 'exec', 'rspec', '--format', 'html', '--out', '_reports/rspec_results.html'

end

desc 'Executa o teste de html e os testes unitários'
task :test => [:test_html, :rspec]

desc 'Executa os testes de links externos'
task :integration => [:test_html, :rspec_report] do |t|
  puts t.full_comment
  options = {
    :assume_extension => true,
    :checks_to_ignore => ['ScriptCheck', 'ImageCheck'],
    :log_level => :warn
  }

  HTMLProofer.check_directory('./_site', options).run
end

def jekyll(directives = '')
  sh "bundle exec jekyll #{directives}"
end
