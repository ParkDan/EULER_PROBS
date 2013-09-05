# unfinished


def prime_array(num)
  array=(2..num).to_a
  array=(2..num).collect { |i| i}
  (2..num).each do |x|
    array=array.reject { |i|  i % x == 0 && i!=x }
  end
  array
end
@primes=prime_array(1000)

puts @primes

sum_of_primes=[]
@primes.length do |n|
 sum_of_primes<<@prime[0,n].inject(:+)
end

puts sum_of_primes
prime_sum_array=[]
sum_of_primes.each do |prime|
  prime_sum_array<<@primes.include?(prime)
end

puts prime_sum_array.last
