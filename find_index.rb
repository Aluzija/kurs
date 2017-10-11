def find_index(array, value)
  if array.index(value)
    puts array.index(value)
  elsif !array.index(value)
    puts "not found"
  end
end

find_index([1, 2, 3, 4, 5], 3)
find_index([5, 8, 6, 2, 2, 10], 2)
find_index([10, 20, 30], 100)
find_index([], 0)
