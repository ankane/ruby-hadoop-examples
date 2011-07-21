#!/usr/bin/env ruby

# data from http://earthquake.usgs.gov/earthquakes/catalogs/eqs7day-M1.txt

require "csv"

CSV.parse(ARGF.read, :headers => true, :header_converters => :symbol, :skip_blanks => true) do |row|
  key = "%.1f" % row[:magnitude].to_f
  value = 1
  puts key.to_s + "\t" + value.to_s
end
