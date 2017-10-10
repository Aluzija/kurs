def pesel_correct?(pesel)
  pesel_arr = []
  pesel.split(//).each {|num| pesel_arr << num.to_i}  #pesel_arr = [9, 3, 0, 8...] => ma tą przewagę nad .digits.reverse że nie kasuje 0 na początku
  pesel_arr_shorter = pesel_arr.take(10)
  multip = [9, 7, 3, 1]
  sum = 0
  j = 0
  #byebug
  pesel_arr_shorter.each do |i|
    if j < 4
      sum += i * multip[j]
      j += 1
    else
      j = 0
      sum += i * multip[j]
      j += 1
    end
  end
  # p sum%10
  if sum%10 != pesel_arr[pesel_arr.length-1]
    false
  else
    true
  end
end

print "Podaj PESEL: "
pesel = gets.chomp

if pesel_correct?(pesel)
  pesel_arr = pesel.split(//) #["9", "3", "0", "8"... ]
  # p pesel_arr = pesel.to_i.digits.reverse # np. [9, 3, 0, 8 ...]
  puts "Pesel #{pesel} is correct"
  puts "Pesel information:"
  if pesel_arr[6] == "0"
    puts "Sex: male."
  else
    puts "Sex: female."
  end
  #birth = []
  #5.downto(0) {|i| birth << pesel[i]} -> linijki 22 i 23 działają jak linijka 24 tylko prościej wygląda
  birth = pesel_arr.take(6) # z tablicy [9,3,0,8,1,3,1,3,0,6,8] powstaje [9,3,0,8,1,3]
  day = birth.slice(4,2).join # od 4 indeksu pobiera 2 elementy i tworzy z nich nową tablicę
  month = birth.slice(2,2).join
  year = birth.slice(0,2)
  if (year[0] == "0") || (year[0] == "1")
    year = "20".concat(year.join)
  else
    year = "19".concat(year.join)
  end
  puts "Date of birth: #{day} -- #{month} -- #{year}"
else
  #pesel_arr = []
  #pesel.split(//).each {|num| pesel_arr << num.to_i}  #pesel_arr = [9, 3, 0, 8...] => ma tą przewagę nad .digits.reverse że nie kasuje 0 na początku

  puts "Pesel #{pesel} is incorrect."
end
