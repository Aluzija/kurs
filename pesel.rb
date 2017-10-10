def pesel_correct?(pesel)
  pesel_arr = pesel.split(//).map {|num| num.to_i}  #pesel_arr = [9, 3, 0, 8...] => ma tą przewagę nad .digits.reverse że nie kasuje 0 na początku
  pesel_arr_shorter = pesel_arr.take(10)
  multip = [9, 7, 3, 1]

  sum = 0
  j = 0

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
  sum%10 == pesel_arr[pesel_arr.length-1] # porównanie reszty z dzielenia sumy przez 10 do wartości ostatniego elementu tablicy pesel_arr
end

def gender_info(pesel)
  pesel_arr = pesel.split(//) #["9", "3", "0", "8"... ]
  if pesel_arr[6] == "0"
    puts "Sex: male."
  else
    puts "Sex: female."
  end
end

def date_of_birth(pesel)
  pesel_arr = pesel.split(//).map {|num| num.to_i}
  #birth = []
  #5.downto(0) {|i| birth << pesel[i]} -> to i linijka wyżej działają jak linijka poniżej tylko prościej wygląda
  birth = pesel_arr.take(6) # z tablicy [9,3,0,8,1,3,1,3,0,6,8] powstaje [9,3,0,8,1,3]
  day = birth.slice(4,2).join # od 4 indeksu pobiera 2 elementy i tworzy z nich nową tablicę
  month = birth.slice(2,2).join.to_i # np. 8, 12, 87...
  year = birth.slice(0,2).join

  case month
  when 81..92
    year = "18".concat(year)
    month -= 80
  when 1..12
    year = "19".concat(year)
    if month >=1 && month <=9
      month = "0".concat(month.to_s)
    end
  when 21..32
    year = "20".concat(year)
    month -= 20
  when 41..52
    year = "22".concat(year)
    month -= 40
  when 61..72
    year = "23".concat(year)
    month -= 60
  end
    puts "Date of birth: #{day} -- #{month} -- #{year}"
end


print "Podaj PESEL: "
pesel = gets.chomp

if pesel_correct?(pesel)
  puts "Pesel #{pesel} is correct"
  puts "Pesel information:"
  gender_info(pesel)
  date_of_birth(pesel)
else
  puts "Pesel #{pesel} is incorrect."
end
