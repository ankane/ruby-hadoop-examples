#!/usr/bin/env ruby

# data from http://www.irs.gov/pub/irs-soi/countyincome07.csv

require "csv"

CSV.parse(ARGF.read, :headers => true, :header_converters => :symbol, :skip_blanks => true) do |row|
  next if row[:county_code] == "000"

  key = row[:state_abbrv]
  value = row[:wages_salaries]
  puts key + "\t" + value.to_s
end
