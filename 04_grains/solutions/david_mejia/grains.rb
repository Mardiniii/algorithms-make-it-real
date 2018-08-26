class Grains 
  attr_accessor :grains, :chessboard, :n

  def initialize
    @n = 64
    @grains = 0
    @chessboard = [1]
    chessboard_grains
  end

  def chessboard_grains
    (@n-1).times { |i| @chessboard << @chessboard[-1]*2  }
  end

  def total
    @grains = @chessboard.sum
  end

  def each(x:)
    raise ArgumentError if x<1 || x>@n
    @chessboard[x-1]
  end
end


p grains = Grains.new
p grains.chessboard
p grains.total
p grains.each(x: 4)



