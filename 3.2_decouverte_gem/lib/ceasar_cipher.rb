def ceasar_letter(ltr,nb)
    if ltr.downcase.ord >= 97 && ltr.downcase.ord <= 122
      if ltr == ltr.downcase
        change = ltr.ord + nb  
        change > 122 ? (change-26).chr : change.chr
      else
        change = ltr.downcase.ord + nb  
        change > 122 ? (change-26).chr.upcase : change.chr.upcase
      end
    else
      ltr
    end
end

def ceasar_cipher(str, key)
  str.chars.map {|s| ceasar_letter(s, key)}.join 
end

puts ceasar_cipher("Merci chef !", 7)

