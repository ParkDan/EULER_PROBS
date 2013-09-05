# n! means n × (n − 1) × ... × 3 × 2 × 1

# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

def factorial(num)
  product=1
  while num!=1
    product*=num
    num-=1
  end
  product
end

one_hundred_factorial=factorial(100)

digit_array_s=one_hundred_factorial.to_s.split("")
digit_array_i=[]
digit_array_s.each{|n| digit_array_i<<n.to_i}
puts digit_array_i.reduce(:+)
