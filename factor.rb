#!/usr/bin/ruby

require 'prime'

def factor(n)
  if Prime.prime?(n)
    return [n]
  end
  primes = Prime.first(n)
  (1..primes).each do |p|
    return [p] + factor( n/p ) if n % p == 0
  end
end

n = Integer(ARGV[0])
puts factor(n)
puts "----"
puts n.prime_division
