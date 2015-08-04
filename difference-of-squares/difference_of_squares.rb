class Squares

  def initialize(count)
    @count = count
  end

  def square_of_sums
    (1..@count).inject(:+).abs2
  end

  def sum_of_squares
    (1..@count).inject(0) { |sum, i| sum + i.abs2 }
  end

  def difference
    square_of_sums - sum_of_squares
  end
end