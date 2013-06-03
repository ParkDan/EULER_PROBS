# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

# # prob 10
# slowest brute force
# n=10000
# t=Time.now
# primes=[]
# n.times do |num|

#   count=0
#   num.times {|i| num%(i+1)==0 ? count+=1 : () }
#   if count==2
#     primes<<num
#   end
# end
# puts primes.inject{|sum,x| sum + x }
# puts Time.now-t

# little more efficient method using sieve
# t=Time.now
# bad_numbers = []
# array=(2..2000000).to_a
# array.each do |x|
#   next if bad_numbers.include? x
#   puts x
#   bad_numbers << array.reject!{ |i| i % x == 0 && i!=x }
# end
# puts array.inject{|sum,x| sum + x }
# puts Time.now-t
# 104743

# most efficient solution
t = Time.now
total = 0
array = (2..2000000).to_a
array.each do |x|
  is_not_prime = 0
  Math.sqrt(x).to_i.times do |i|
    next if (i+1) <= 1
    if x%(i+1)==0
      is_not_prime += 1
      break
    end
  end
  if is_not_prime == 0
    total += x
  end
end
puts total
puts Time.now-t

