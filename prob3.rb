# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

# prob 3
bigprime =0
factors=[]
number=600851475143
num=Math.sqrt(number).to_i
num.times {|i| number%(i+1)==0 ? factors<<(i+1) : () }

factors.each do |n|
  count=0
  n.times {|i| n%(i+1)==0 ? count+=1 : () }
  if count==2
    bigprime=n
  end
end
puts bigprime
