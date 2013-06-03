# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

# prob 7# sieve

array=(2..130000).to_a
array=(2..130000).collect { |i| i}
(2..130000).each do |x|
  array=array.reject { |i|  i % x == 0 && i!=x }
end
puts array[10000]
# 104743
