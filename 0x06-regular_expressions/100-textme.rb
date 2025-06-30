#!/usr/bin/env ruby

if ARGV.empty?
  puts "Usage: #{$0} <log_entry>"
  exit 1
end

log_entry = ARGV[0]

# Extract sender, receiver, and flags using regular expressions
sender = log_entry.match(/\[from:(.*?)\]/)&.captures&.first
receiver = log_entry.match(/\[to:(.*?)\]/)&.captures&.first
flags = log_entry.match(/\[flags:(.*?)\]/)&.captures&.first

# Output in the required format if all components were found
if sender && receiver && flags
  puts "#{sender},#{receiver},#{flags}"
else
  puts "Could not parse all required fields from log entry"
  exit 1
end
