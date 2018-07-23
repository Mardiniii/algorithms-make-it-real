class Raindrops
  WEATHERS = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert number
    weather = ''

    weather << WEATHERS[3] if (number % 3).zero?
    weather << WEATHERS[5] if (number % 5).zero?
    weather << WEATHERS[7] if (number % 7).zero?

    weather.empty? ? number.to_s : weather
  end
end
