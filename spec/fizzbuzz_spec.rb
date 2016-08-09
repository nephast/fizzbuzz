require 'fizzbuzz'

describe 'fizzbuzz' do
  it 'returns "fizz" when passed multiple of 3' do
    expect(fizzbuzz(3)).to eq 'fizz'
    expect(fizzbuzz(6)).to eq 'fizz'
    expect(fizzbuzz(9)).to eq 'fizz'
    expect(fizzbuzz(-3)).to eq 'fizz'
  end
  it 'returns "buzz" when passed multiple of 5' do
    expect(fizzbuzz(5)).to eq 'buzz'
    expect(fizzbuzz(10)).to eq 'buzz'
    expect(fizzbuzz(20)).to eq 'buzz'
    expect(fizzbuzz(-5)).to eq 'buzz'
  end
  it 'returns "fizzbuzz" when passed multiple of 3 AND 5' do
    expect(fizzbuzz(15)).to eq 'fizzbuzz'
    expect(fizzbuzz(30)).to eq 'fizzbuzz'
    expect(fizzbuzz(60)).to eq 'fizzbuzz'
    expect(fizzbuzz(-15)).to eq 'fizzbuzz'
  end
  it 'returns input when passed other number' do
    expect(fizzbuzz(4)).to eq 4
    expect(fizzbuzz(-4)).to eq -4
    expect(fizzbuzz(0)).to eq 0
  end
  it 'should work inside an each loop' do
    output = [1,2,'fizz',4,'buzz','fizz',7,8,'fizz','buzz',11,'fizz',13,14,'fizzbuzz']
    expect([*1..15].map{|x| fizzbuzz(x)}).to eq output
  end

end
