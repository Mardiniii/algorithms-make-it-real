class Grains 
  attr_accessor :grains, :chessboard, :n

  def initialize
    @n = 64
    @grains = 0
    @chessboard = []
    chessboard_grains
  end

  def chessboard_grains
    @n.times { |i| @chessboard << 2**i }
  end

  def total_grains
    @grains = @chessboard.sum
  end

  def each_position(x:)
    raise ArgumentError if x<1 || x>@n
    @chessboard[x-1]
  end
end


p chessboard = Grains.new
p chessboard.chessboard
p chessboard.total_grains
p chessboard.each_position(x: 4)



