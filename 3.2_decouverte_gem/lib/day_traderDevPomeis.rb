def day_trader(arr)
  return 'arr isnt full of int' if !arr.select { |n| !n.is_a?(Integer) }.length.zero?
  return nil if arr == arr.sort.reverse
  returned_arr = []
  gap = 0
  ib = 0
  arr.each do |buy|
    is = 0
    arr.each do |sell|
      if sell - buy > gap && ib < is
        gap = sell - buy
        returned_arr = [ib, is]
      end
      is+=1
    end
    ib+=1
  end
  returned_arr
end
