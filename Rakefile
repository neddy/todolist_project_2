require "rake/testtask"
require "bundler/gem_tasks"
# require "rake/file_list"
require 'find'

desc 'Say hello'
task :hello do
  puts "Hello there. This is the 'hello' task."
end

desc 'Run tests'
task :default => :test

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList['test/**/*_test.rb']
end

# desc 'list files'
# task :files do
#   file_list = Rake::FileList.new('**/*')
#   # file_list.exclude(/^\./)
#   puts file_list
# end


desc 'list files'
task :files do
  Find.find('.') do |name|
    next if name.include?('/.') # Excludes files and directories with . names
    puts name if File.file?(name)
  end
end