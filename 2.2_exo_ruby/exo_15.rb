puts "Entrez votre année de naissance :"
print "> "
nb = gets.chomp.to_i
age = 0

while nb != 2020
  if age == 0 || age == 1 
    puts "En #{nb} : Vous aviez #{age} an"
  elsif age != 1
    puts "En #{nb} : Vous aviez #{age} ans"
  end 
  nb += 1
  age += 1
end

puts "Aujourd'hui en #{nb} : Vous avez (ou allez avoir) #{age} ans"


### Version simplifiée ###
#===============================================================
# while nb != 2020
#   puts "En #{nb} : Vous aviez #{age} an(s)"
#   nb += 1
#   age += 1
# end
#puts "#{nb}"
#===============================================================