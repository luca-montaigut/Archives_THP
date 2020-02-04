#Find The Parity Outlier
def find_outlier(integers)
  if integers.count{|x| x.odd?} > 1
    return integers.select(&:even?).join().to_i
  else
    return integers.select(&:odd?).join().to_i
  end
end
