require 'rails_helper'

RSpec.describe Fizzbuzz, :type => :model do

  it 'outputs "1" for 1' do
    expect(Fizzbuzz.run(1)).to eq("1")
  end

  it 'outputs "fizz" for multiples of 3' do
    expect(Fizzbuzz.run(3)).to eq("fizz")
  end

  it 'outputs "buzz" for multiples of 5' do
    expect(Fizzbuzz.run(5)).to eq("buzz")
  end

  it 'outputs "fizzbuzz" for multiples of 3 and 5' do
    expect(Fizzbuzz.run(15)).to eq("fizzbuzz")
  end

end
