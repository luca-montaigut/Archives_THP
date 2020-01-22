puts "Entrez votre age :"
print "> "
age = gets.chomp.to_i
nb = 0

while age != 0
  if nb == 0 || nb == 1 
    puts "Il y a #{age} ans : Vous aviez #{nb} an"
  elsif age == 1
    puts "Il y a #{age} an : Vous aviez #{nb} ans"  
  else nb != 1
    puts "Il y a #{age} ans : Vous aviez #{nb} ans"
  end 
  age = age - 1
  nb += 1
end

puts "Cette année vous avez (ou allez avoir) #{nb} ans"


