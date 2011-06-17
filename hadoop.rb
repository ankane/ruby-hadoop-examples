#!/usr/bin/env ruby

hadoop_home = "/usr/local/Cellar/hadoop/0.21.0/libexec"

args = [
  "-mapper ./map.rb",
  "-reducer ./reduce.rb",
  "-file map.rb",
  "-file reduce.rb",
  "-input input",
  "-output output"
].join(" ")

puts %x[#{hadoop_home}/bin/hadoop jar #{hadoop_home}/mapred/contrib/streaming/hadoop-0.21.0-streaming.jar #{args}]

