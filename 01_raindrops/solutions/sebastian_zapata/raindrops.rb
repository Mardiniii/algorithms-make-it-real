class Raindrops
  RULES = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(number)
    weather = RULES.each_with_object('') do |(factor, rule), memo|
      memo << RULES[factor] if (number % factor).zero?
    end

    weather.empty? ? number.to_s : weather
  end
end
