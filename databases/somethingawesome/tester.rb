require 'date'

y = "2016-07-05"
a = y[0..3].to_i
b = y[5..6].to_i
c = y[8..9].to_i
x = Date.new(a,b,c)
p x
y = Date.new(2015,8,10)
puts (x <=> y)
