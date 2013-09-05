# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 2^1000?

num=2**1000
digit_array_s=num.to_s.split("")
digit_array_i=[]
digit_array_s.each{|n| digit_array_i<<n.to_i}
puts digit_array_i.reduce(:+)

# 1366


