N = ARGV[0].to_i

a, b = 0, 1
if N == 1
  puts a
  exit(0)
elsif N == 2
  puts a
  puts b
  exit(0)
end
  i = 1
  fib = [a, b]
while i <= N - 2
  c = a + b
  fib << c
  a = b
  b = c
  i += 1
end
puts fib
