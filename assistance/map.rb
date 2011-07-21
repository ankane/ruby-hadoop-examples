#!/usr/bin/env ruby

# data from http://earthquake.usgs.gov/earthquakes/catalogs/eqs7day-M1.txt

require "csv"

CSV.parse(ARGF.read, :headers => true, :header_converters => :symbol, :skip_blanks => true) do |row|
  (1946..2009).each do |year|
    if value = row[:"fy#{year}"]
      puts [year, value].join("\t")
    end
  end
end
