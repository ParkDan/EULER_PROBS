# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

# prob 10
n=10000
t=Time.now
primes=[]
n.times do |num|

  count=0
  num.times {|i| num%(i+1)==0 ? count+=1 : () }
  if count==2
    primes<<num
  end
end
puts primes.inject{|sum,x| sum + x }
puts Time.now-t
