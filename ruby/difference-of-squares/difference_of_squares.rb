class Squares
  VERSION = 2
  attr_accessor :n
  def initialize(num)
    self.n = num
  end

  def difference
    square_of_sum - sum_of_squares
  end

  def sum_of_squares
    sum = Rational(n*n*n, 3) + Rational(n*n, 2) + Rational(n, 6)
    sum.to_i
  end

  def square_of_sum
    sum_of_n = n * (n + 1) / 2
    sum_of_n * sum_of_n
  end
end

