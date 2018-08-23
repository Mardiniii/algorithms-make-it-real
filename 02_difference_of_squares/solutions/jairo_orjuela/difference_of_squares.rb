class Difference_of_squares


  def self.difference(num)
    array = []
    number = @num.to_i
    j = 1
    square_of_sum = 0
    sum_of_square = 0
    difference_of_squares = 0

    begin
      array << j
      j +=1
    end while j <= num

    array.each do |i|
      square_of_sum += i
    end

    square_of_sum = square_of_sum**2

    array.each do |i|
      sum_of_square += i**2
    end

    difference_of_squares = square_of_sum - sum_of_square

  end
  
end
