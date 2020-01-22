puts "Entrez un nombre :"
print "> "
nb = gets.chomp.to_i

nb.times do |i|
  puts "#{i + 1}"
end