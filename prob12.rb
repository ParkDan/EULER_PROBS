# The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:

# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

# Let us list the factors of the first seven triangle numbers:

#  1: 1
#  3: 1,3
#  6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
# We can see that 28 is the first triangle number to have over five divisors.

# What is the value of the first triangle number to have over five hundred divisors?
# brute force method.. too inefficient
def divisor(num)
  factor=1
  (1..num/2).each do |n|
    if num%n==0
      factor+=1
    end
  end
  factor
end

def prime_array(num)
  array=(2..num).to_a
  array=(2..num).collect { |i| i}
  (2..num).each do |x|
    array=array.reject { |i|  i % x == 0 && i!=x }
  end
  array
end
@primes=prime_array(1000)

# trick for finding factors using prime factorization tree
def divisor2(num)
  count_array=[]
  divisor=1
  @primes.each do |prime|
    count=1
    break if prime>num
    while(num%prime==0)
      num=num/prime
      count+=1
    end
    count_array<<count
  end
  count_array.each{|c| divisor=divisor*c}
  divisor
end

t=Time.now
last=1
n=2
while divisor2(last)<500
  last+=n
  n+=1
end
puts last
puts Time.now-t

#76576500

