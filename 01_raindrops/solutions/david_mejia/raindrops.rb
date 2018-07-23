class Raindrops
  attr_accessor :number

  def initialize(number)
   @number = number
  end

  def is_raining
    raining = "#{pling}#{plang}#{plong}"
    raining != "" ? raining : @number.to_s
  end

  def pling
    check_modulus(@number,3) ? "Pling" : ""
  end

  def plang
    check_modulus(@number,5) ? "Plang" : ""
  end

  def plong
    check_modulus(@number,7) ? "Plong" : ""
  end

  def check_modulus(number, factor)
     number%factor == 0
  end
end

weather = Raindrops.new(34)

p weather.is_raining
