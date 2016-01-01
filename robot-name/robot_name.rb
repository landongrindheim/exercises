class Robot
  LETTERS = ("A".."Z").to_a
  
  attr_accessor :name
  def initialize
    reset
  end
 
  def reset
    @name = ""
    alpha_chars(@name)
    numeric_chars(@name)
    @name
  end

  private
    def alpha_chars(str)
      2.times do
        str << LETTERS[rand(26)]
      end
    end

    def numeric_chars(str)
      3.times do
        str << rand(0..9).to_s
      end
    end
end

