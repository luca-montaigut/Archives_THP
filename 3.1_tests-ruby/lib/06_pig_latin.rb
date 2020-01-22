def translate(str)
  tab = str.split.map do |word|
    i=0
    while word[i].count("aeio") != 1 
      i +=1
    end
    start = word[0..i-1]
    fin = word.delete(word[0..i-1])
    fin + start + "ay"
  end
  tab.join(" ")
end
