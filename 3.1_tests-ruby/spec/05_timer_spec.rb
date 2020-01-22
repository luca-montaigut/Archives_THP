require_relative '../lib/05_timer'

describe 'time_string' do
  it "should display 0 seconds as 00:00:00" do
    expect(time_string(0)).to eq("00:00:00")
  end

  it "should display 12 seconds as 00:00:12" do
    expect(time_string(12)).to eq("00:00:12")
  end

  it "should display 66 seconds as 00:01:06" do
    expect(time_string(66)).to eq("00:01:06")
  end

  it "should display 4000 seconds as 01:06:40" do
    expect(time_string(4000)).to eq("01:06:40")
  end
end