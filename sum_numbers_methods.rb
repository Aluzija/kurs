n = ARGV.join.to_i
sum = 0

1.upto(n) do |element|
  sum += element if element.even?
end

puts sum
