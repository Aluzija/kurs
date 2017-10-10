def get_numbers
  print "\nEnter first number: "
  number1 = gets.to_i
  print "Enter second number: "
  number2 = gets.to_i
  numbers = {:number1 => number1, :number2 => number2}
end

def addition
  numbers = get_numbers
  sum = numbers[:number1] + numbers[:number2]
  puts "\n#{numbers[:number1]} + #{numbers[:number2]} = #{sum}"
  puts ""
end

def subtraction
  numbers = get_numbers
  subtr = numbers[:number1] - numbers[:number2]
  puts "\n#{numbers[:number1]} - #{numbers[:number2]} = #{subtr}"
  puts ""
end

def multiplication
  numbers = get_numbers
  multip = numbers[:number1] * numbers[:number2]
  puts "\n#{numbers[:number1]} * #{numbers[:number2]} = #{multip}"
  puts ""
end

def division
  numbers = get_numbers
  if numbers[:number2] == 0
    puts "\nYou cannot divide by 0."
    puts ""
  else
    div = numbers[:number1].to_f / numbers[:number2]
    puts "\n#{numbers[:number1]} / #{numbers[:number2]} = #{div}"
    puts ""
  end
end

loop do

  puts "Choose operation:"
  puts "1. Add numbers"
  puts "2. Subtract numbers"
  puts "3. Multiply numbers"
  puts "4. Divide numbers"
  puts "5. Quit"
  print "\nWhat is your choice?: "

  choice = gets.to_i

  case choice
  when 1
    addition
  when 2
    subtraction
  when 3
    multiplication
  when 4
    division
  when 5
    puts "Bye bye"
    exit(0)
  else
    puts "Wrong number of operation. Choose from 1 to 5."
  end
end
