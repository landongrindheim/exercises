class Prime
  def self.nth(num)
    Nth.prime_at(num)
  end
end

class Nth
  def self.prime_at(num)
    raise ArgumentError if num < 1
    prime_generator.first(num).last 
  end

  private
    def self.prime_generator
      (2..Float::INFINITY).lazy.reject {|prime_candidate| (2..Math.sqrt(prime_candidate)).any? {|factor| prime_candidate % factor == 0 }}
    end
end
