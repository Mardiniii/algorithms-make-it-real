class Squares
attr_accessor :n

  def initialize(n)
    @n = n
    @numbers = []
    build_vector
  end
  
  def difference
    square_of_sum - sum_of_squares
  end

  def build_vector
    @n.times{|num| @numbers << num+1}
  end

  def square_of_sum
    @numbers.sum**2
  end

  def sum_of_squares
    @numbers.map{|num| num**2}.sum
  end
end
x = 10

 p Squares.new(x).difference


class Squares2
attr_accessor :n

  def initialize(n)
    @n = n
  end
  
  def difference
    square_of_sum(@n)**2 - sum_of_squares(@n)
  end
  
  def build_vector(x)
    x <= 1 ? [x] : build_vector(x-1) << x
  end

  def square_of_sum(x)
    x<=1 ? x : x+square_of_sum(x-1)
  end

  def sum_of_squares(x)
    x<=1 ? x**2 : x**2+sum_of_squares(x-1)
  end
end

p Squares2.new(x).difference
