puts "Entrez un nombre :"
print "> "
nb = gets.chomp.to_i

while nb != 0
  puts "#{nb}"
  nb -= 1
end

# afficher 0 comme dernière occurance :
puts "#{nb}"
