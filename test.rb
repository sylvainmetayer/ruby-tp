#!/usr/bin/ruby

# Différentes façon de boucler
#(1..100).each do |i|
#	puts i
#end

#(1..100).each {|i| puts i }

#100.times do |i|
#	puts i
#end

(0..100).each do |i|
	out = ""
	out += "Fizz" if i%3 == 0
	out += "Buzz" if i%5 == 0
	puts out.size > 0 ? out : i
end
