#!/usr/bin/env ruby
require "fileutils"

class Array
  def include_file?(file)
    self.find { |f| FileUtils.cmp(file, f) }
  end
end

source, target = ARGV[0], ARGV[1]

unless File.directory?(source)
  puts "Informed source is not a directory"
  raise SystemExit
end

unique_files = []
repeated_files = []

puts "Finding duplicated files..."
Dir.glob(File.join(source, "*")) do |file|
  if unique_files.include_file?(file)
    repeated_files << file
  else
    unique_files << file
  end
end

puts "Found #{unique_files.size} unique files"
puts "And #{repeated_files.size} repeated files"

FileUtils.mkdir_p target unless File.directory?(target)
puts "Moving unique files to #{target}"
FileUtils.mv(unique_files, target)

