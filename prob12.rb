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
def divisor(num)
  factor=0
  (1..num).each do |n|
    if num%n==0
      factor+=1
    end
  end
  factor
end

  t=Time.now
  triangle_array=[1]
  n=2
while divisor(triangle_array.last)<500
  triangle_array<<(n+triangle_array.last)
  n+=1
  # puts divisor(triangle_array.last)
  # puts "___#{triangle_array.last}"
end

puts triangle_array.last
puts Time.now-t