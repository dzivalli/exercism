class Grains
  def self.square(number)
    2 ** (number - 1)
  end

  def self.total
    Grains.square(65) - 1
  end
end