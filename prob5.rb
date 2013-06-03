# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

#5
check=true
n=20
t=Time.now
while check
  (11..20).each do |x|
    if n%x==0
      if x==20
        check=false
        break
      end
      next
    else
      n+=20
      break
    end
  end
end
t1=Time.now
puts t1-t
puts n
