require 'fizzbuzz2'

describe 'fizzbuzz2' do
  it 'should return fizz when passed multiples of 3' do
    expect(3.fizzbuzz).to eq 'fizz'
    expect(6.fizzbuzz).to eq 'fizz'
    expect(9.fizzbuzz).to eq 'fizz'
    expect(-9.fizzbuzz).to eq 'fizz'
  end
  it 'should return buzz when passed multiples of 5' do
    expect(5.fizzbuzz).to eq 'buzz'
    expect(25.fizzbuzz).to eq 'buzz'
    expect(50.fizzbuzz).to eq 'buzz'
    expect(-5.fizzbuzz).to eq 'buzz'
  end
  it 'should return fizzbuzz when passed multiples of 15' do
    expect(15.fizzbuzz).to eq 'fizzbuzz'
    expect(60.fizzbuzz).to eq 'fizzbuzz'
    expect(150.fizzbuzz).to eq 'fizzbuzz'
    expect(-15.fizzbuzz).to eq 'fizzbuzz'
  end
  it 'should return the input when passed other numbers' do
    expect(1.fizzbuzz).to eq 1
    expect(0.fizzbuzz).to eq 0
    expect(-4.fizzbuzz).to eq -4
  end

  it 'should work in an each loop' do
    output = [1,2,'fizz',4,'buzz','fizz',7,8,'fizz','buzz',11,'fizz',13,14,'fizzbuzz']
    (1..15).each do |x|
      expect(x.fizzbuzz).to eq output[x-1]
    end
  end

end
