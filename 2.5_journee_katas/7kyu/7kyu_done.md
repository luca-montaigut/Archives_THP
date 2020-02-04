### Vowel Count
def getCount(inputStr)
  inputStr.count("aeiou")
end


### Get the Middle Character
def get_middle(s)
  if s.size.odd?
    s[s.size/2]
  else
    s[s.size/2-1]+s[s.size/2]
  end
end


### Square Every Digit
def square_digits num
  num.to_s.split('').map{|i| i.to_i**2}.join.to_i
end


### Is this a triangle?
def isTriangle(a,b,c)
  tri = []
  tri << a
  tri << b
  tri << c
  tri.max < tri.min(2).sum 
end

### Disemvowel Trolls
def disemvowel(str)
  str.delete"aAeEiIoOuU"
end

### Shortest Word
def find_short(s)
  l = s.split(" ").map.sort_by(&:size).first.size
end

### List Filtering
def filter_list(l)
  l.keep_if {|a| a!=a.to_s && a.to_s.count("0-9")>0}
end

### Credit Card Mask
def maskify(cc)
  i = 0
  finish = []
  four = cc.chars.last(4).join
  while i < cc.size-4
    finish << "#"
    i += 1
  end
  finish << four
  finish.join
end

### Jaden Casing Strings
class String
  def toJadenCase
    s = self.split
    str = s.map{|x| x.capitalize}.join(" ")
  end
end

### Categorize New Member
def openOrSenior(data)
  cat = []
data.size.times do |i|
    if data[i][0] >= 55 && data[i][1] > 7
      cat << 'Senior'
    else
      cat << 'Open'
    end
  end
  return cat
end

### Highest and Lowest
def high_and_low(numbers)
  max = numbers.split.map{|x| x.to_i}.max 
  min = numbers.split.map{|x| x.to_i}.min
  result = max.to_s + " " + min.to_s
end

### Find the next perfect square!
def find_next_square(sq)
a = Math.sqrt(sq).to_f 
  if a == a.to_i
    (a+1)*(a+1)
  else
  -1
  end
end

### Remove the minimum
def remove_smallest(numbers)
  if numbers == []
    return numbers
  end
  arr = []
  numbers.each {|x| arr << x.to_i}
  arr.delete_at(arr.index(arr.min))
  return arr
end

### Isograms
def is_isogram(string)
  array = string.downcase.chars.map {|char| string.downcase.count(char) > 1 ? "not isogram" : "isogram"}
  array.include?("not isogram") ? false : true 
end
// solution finale bien plus maline : string.downcase.chars.uniq == string.downcase.chars

#Two to One
def longest(a1, a2)
  a = a1 + a2
  a.chars.uniq.sort.join
end

