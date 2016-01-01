class Grains
  def self.square(day)
    2 ** (day - 1)
  end

  def self.total
    square(65) - 1
  end
end
