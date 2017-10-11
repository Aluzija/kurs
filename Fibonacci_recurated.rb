N = ARGV.join.to_i

def fibonacci(how_many)
  if how_many > 1
    p (how_many - 1) + (how_many - 2)
    fibonacci(how_many-1)
  else
    p 0
  end
end

fibonacci(N)
