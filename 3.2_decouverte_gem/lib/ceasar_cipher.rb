def caesar_letter(ltr,nb)
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

#puts ceasar_cipher("Can you read this ?",7)

#décrytage = 26-(clefcrytage%26)

def hardcore_crypto(str)
  i = 0
  f_str = []
  str.chars.each do |s|
    f_str << caesar_letter(s, 26 - ( 3 * i + str.length * 5) % 26 )
    i+= 3
  end
  f_str.join
end

puts hardcore_crypto("Isho o Hdpkuzco xf zkgyx xzw ptiiujqhyma ec px npm qig*hj qxtq wdvkiudfwxpe !")