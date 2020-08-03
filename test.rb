require 'find'
# require 'file'

Find.find('.') do |name|
  next if name.include?('/.') # Excludes files and directories with . names
  puts name if File.file?(name)
end
