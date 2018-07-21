class Raindrops
  require 'prime'

  def self.translate(integer)
    return 'Error' if integer.class != Integer
    return integer if integer.abs <= 2

    string = ''
    string += 'Pling' if (integer % 3).zero?
    string += 'Plang' if (integer % 5).zero?
    string += 'Plong' if (integer % 7).zero?

    string.empty? ? integer : string
  end

  def self.translate_prime(integer)
    return 'Error' if integer.class != Integer
    return integer if integer.abs <= 2

    factors = integer.prime_division.flatten.uniq.sort
    return integer if (factors & [3, 5, 7]).empty?

    string = ''
    string += 'Pling' if factors.include? 3
    string += 'Plang' if factors.include? 5
    string += 'Plong' if factors.include? 7
    string
  end
end
