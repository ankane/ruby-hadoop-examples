#!/usr/bin/env ruby

prev_key = nil
total = 0

ARGF.each do |line|
   key, value = line.chomp.split("\t")

   if key != prev_key
     puts [prev_key, total].join("\t") unless prev_key.nil?
     total = 0
     prev_key = key
   end
   total += value.to_i
end

puts [prev_key, total].join("\t") unless prev_key.nil?
