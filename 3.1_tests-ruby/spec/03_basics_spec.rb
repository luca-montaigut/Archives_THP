require_relative '../lib/03_basics'

describe 'who is the biggest number' do
  # Hint: 'def who_is_bigger(a, b, c)'
  it 'tells me the biggest' do
    expect(who_is_bigger(84, 42, nil)).to eq("nil detected")
    expect(who_is_bigger(nil, 42, 21)).to eq("nil detected")
    expect(who_is_bigger(84, 42, 21)).to eq("a is bigger")
    expect(who_is_bigger(42, 84, 21)).to eq("b is bigger")
    expect(who_is_bigger(42, 21, 84)).to eq("c is bigger")
  end
end

describe 'crazy stuff on strings' do
  # Reverse, upcase then removes all L, T and A.
  # Hint: google ruby string
  it 'does crazy stuff on strings' do
    expect(reverse_upcase_noLTA("Tries this at Home, Kids"))
      .to eq("SDIK ,EMOH  SIH SEIR")
    expect(reverse_upcase_noLTA("Ponies loves carrots"))
      .to eq("SORRC SEVO SEINOP")
    expect(reverse_upcase_noLTA("qwertyuiopasdfghjkl;zxcvbn"))
      .to eq("NBVCXZ;KJHGFDSPOIUYREWQ")
  end
end


describe '42 finder' do
  # array_42 takes an array as parameter and returns:
  # - true if there's a 42 in the array items
  # - false otherwise
  # Hint: Should be 2 lines (and can be one :)
  # Hint: google ruby array each
  it 'finds 42' do
    expect(array_42([1, 2, 3, 4, 5, 6, 7 , 8, 9, 10])).to eq false
    expect(array_42([1, 2, 3, 4, 5, 6, 7 , 8, 9, 42, 21, 10.5])).to eq true
  end
end


describe 'crazy stuff on arrays' do
  # The magic_array function takes an array of number or an array of
  # array of number as parameter and return the same array :
  # - flattened (i.e. no more arrays in array)
  # - sorted
  # - with each number multiplicated by 2
  # - with each multiple of 3 removed
  # - with each number duplicate removed (any number should appear only once)
  # - sorted
  # BONUS : You can do this in one line less than 55 chars
  it 'does crazy stuff on Arrays' do
    expect(magic_array([1, 2, 3, 4, 5, 6]))
      .to eq([2, 4, 8, 10])
    expect(magic_array([1, [2, 3], 4, 5, 6, 23, 31, [1, 2, 3]]))
      .to eq([2, 4, 8, 10, 46, 62])
    expect(magic_array([[32, 54], [48, 12], [21, [1, 2, [3]]], 7, 8]))
      .to eq([2, 4, 14, 16, 64])
  end
end
