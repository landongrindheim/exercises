class Squares
  VERSION = 1

  attr_reader :num

  def initialize(num)
    @num = num
  end

  def sum_of_squares
    1.upto(num).inject {|sum, n| sum + n * n } 
  end

  def square_of_sums
    sum * sum
  end

  def sum
    1.upto(num).inject {|sum, n| sum + n }
  end
  
  def difference
    square_of_sums - sum_of_squares    
  end

end

