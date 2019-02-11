class Grains 
  MAX_SQUARES = 64

  def self.chessboard_grains
    @chessboard = [1]

    (MAX_SQUARES-1).times { |i| @chessboard << @chessboard[-1]*2  }
  end

  def self.total
    @grains = @chessboard.sum
  end

  def self.square(x)
    raise ArgumentError if x < 1 || x > MAX_SQUARES

    chessboard_grains unless @chessboard

    @chessboard[x-1]
  end
end


