def is_multiple_of_3_or_5?(x)
  x % 3 == 0 || x % 5 == 0 ? true : false
end

def sum_of_3_or_5_multiples(final_number)
  if final_number.to_i < 0 || final_number != final_number.to_i
    return "Juste des entiers fils !"
  else
    tab = []
    final_number.times do |i| #dernière occurence = final_number-1 (1ère = 0, pas d'incidence sur la somme finale)
      tab << i
    end  
    tab.map {|x| is_multiple_of_3_or_5?(x) ? x : 0}.sum
  end
end
