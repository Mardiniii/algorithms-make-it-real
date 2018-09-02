class Grains 
  def self.chessboard_grains
    @chessboard = [1]

    (64-1).times { |i| @chessboard << @chessboard[-1]*2  }
  end

  def self.total
    @grains = @chessboard.sum
  end

  def self.square(x)
    raise ArgumentError if x < 1 || x > 64

    chessboard_grains unless @chessboard

    @chessboard[x-1]
  end
end

p Grains.square(16)
p Grains.square(32)
p Grains.square(8)
p Grains.square(24)
p Grains.square(44)

