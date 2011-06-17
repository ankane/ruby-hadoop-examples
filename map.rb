#!/usr/bin/env ruby

ARGF.each do |line|

   # remove any newline
   line = line.chomp

   # do nothing will lines shorter than 2 characters
   next if ! line || line.length < 2

   # grab our key as the two-character prefix (lower-cased)
   key = line[0,2].downcase

   # value is a count of 1 occurence
   value = 1

   # output to STDOUT
   # <key><tab><value><newline>
   puts key + "\t" + value.to_s

end
