# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

# 4
a=[]
(100..999).each do |x|
  (100..999).each do |y|
    product=(x*y).to_s
    if product==product.reverse
      a<<product.to_i
    end
  end
end
puts a.max
