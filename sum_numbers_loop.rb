n = ARGV.join.to_i

i = 1
sum = 0
while i <= n
  if i%2 == 0
    sum += i
    i += 1
  else
    i += 1
  end
end

p sum
