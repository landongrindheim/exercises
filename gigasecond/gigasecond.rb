class Gigasecond
  VERSION = 1

  GIGASECOND = 10 ** 9

  def self.from(time)
    time + GIGASECOND
  end
end

