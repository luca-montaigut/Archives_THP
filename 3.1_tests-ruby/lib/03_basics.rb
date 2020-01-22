def who_is_bigger (a, b, c)
  if a == nil || b == nil || c==nil
      return "nil detected"
  elsif a > b && a > c
      return "a is bigger"
  elsif b > a && b > c
      return "b is bigger"
  elsif c > a && c > b
      return "c is bigger"
  end
end

def reverse_upcase_noLTA(string)
  return string.upcase.reverse.tr("LTA","")
end

def array_42(tab)
  #if in one statement : condition ? if_true : if_false
  tab.count {|x| x == 42} >= 1 ? true : false
end

def magic_array(tab)
  tab.flatten.map{|x|x*2}.delete_if{|x|x%3==0}.uniq.sort
  # 51 caractères ! Whouhou ! =) (ps : tab ne compte pas)
end

