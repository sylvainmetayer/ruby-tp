#!/usr/bin/ruby

def fibo(n)
  return n > 1 ? fibo(n-1) + fibo(n-2) : 1
end

def fibo_lineaire(n)
  out=[1,1]
  (2..n).each do |i|
    out << out[-1] + out[-2]
  end
  out[n]
end

n=Integer(ARGV[0])
if n < 0
  puts "Error"
else
  puts fibo_lineaire(n)
end
