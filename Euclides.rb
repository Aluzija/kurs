numbers_to_subtract = ARGV.map {|i| i.to_i}

while numbers_to_subtract.max != numbers_to_subtract.min

  bigger = numbers_to_subtract.max
  smaller = numbers_to_subtract.min
  subtraction = bigger - smaller
  numbers_to_subtract[numbers_to_subtract.index(bigger)] = subtraction

end

puts numbers_to_subtract[0]
