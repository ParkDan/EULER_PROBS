# If the numbers 1 to 5 are written out in words =>  one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.


hash={1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine",
      10 => "ten",
      11 => "eleven",
      12 => "twelve",
      13 => "thirteen",
      14 => "fourteen",
      15 => "fifteen",
      16 => "sixteen",
      17 => "seventeen",
      18 => "eighteen",
      19 => "nineteen",
      20 => "twenty",
      30 => "thirty",
      40 => "forty",
      50 => "fifty",
      60 => "sixty",
      70 => "seventy",
      80 => "eighty",
      90 => "ninety",
      hundred_string: "hundredand"
}

@letter_count=0

(1..1000).each do |n|
  next unless hash[n]==nil
  if n<100
    ones_dig=n%10
    hash[n]=hash[n-ones_dig]+hash[ones_dig]
  elsif n%100==0&&n<1000
    hundreds_dig=n/100
    hash[n]=hash[hundreds_dig]+"hundred"
  elsif n<1000
    hundreds_dig=n/100
    remainder=n%100
    hash[n]=hash[hundreds_dig]+hash[:hundred_string]+hash[remainder]
  elsif n==1000
    hash[n]="onethousand"
  end
end

(1..1000).each do |n|
  @letter_count+=hash[n].length
end

puts @letter_count
