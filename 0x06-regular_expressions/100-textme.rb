#!/usr/bin/env ruby
myArray = ARGV[0].scan(/from:(\+?[a-zA-Z0-9]+)|to:(\+?[a-zA-Z0-9]+)|flags:([0-1\-:]+)/).join(" ")
myArrayList = myArray.split
puts myArrayList.join(",")
