require_relative '../lib/day_trader.rb'

describe 'the day trader method' do
  it 'should work for ez sorted arr' do
    expect(day_trader([1, 2, 3, 4, 5, 6, 7])).to eq([0, 6])
  end
  
  it 'should work for random arrays' do
    expect(day_trader([1, 2, 15, 2, 6, 7])).to eq([0, 2])
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4])
    expect(day_trader([17, 5, 12, 3, 63, 6, 3])).to eq([3, 4])
    expect(day_trader([17, 5, 12, 17, 6, 3])).to eq([1, 3])
  end
  
  it 'should return nil' do
    expect(day_trader([9, 8, 7, 6, 5])).to eq(nil)
    expect(day_trader(["a", 1, 2, 3])).to eq('arr isnt full of int')
  end
end
