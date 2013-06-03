# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

#prob 9
array=[]
# pythagorean_triples=[]
product=1
array=(1..1000).collect { |i| i*i }
array.each do |x|
  array.each do |y|
    if x>y
      next
    elsif Math.sqrt(x+y)%1==0
      z=x+y
      if (Math.sqrt(x)+Math.sqrt(y)+Math.sqrt(z))==1000
      # pythagorean_triples=[Math.sqrt(x),Math.sqrt(y),Math.sqrt(z)]
      product=Math.sqrt(x)*Math.sqrt(y)*Math.sqrt(z)
      end
    end
  end
end

puts product
