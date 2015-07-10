class Fizzbuzz < ActiveRecord::Base

  def self.run(number)
    return 'fizzbuzz' if number % 15 == 0
    return 'buzz' if number % 5 == 0
    return 'fizz' if number % 3 == 0
    number.to_s
  end

end
