class Fixnum
  VERSION = 1
  
  def to_roman
    RomanNumeral.translate(self)
  end
end

class RomanNumeral
  ROSETTA_STONE = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }
  
  def self.translate(int)
    inscription = ""
    until int == 0
      ROSETTA_STONE.each do |digit, numeral|
        if int / digit >= 1
          inscription << ROSETTA_STONE[digit]
          int -= digit 
          break
        end
      end
    end
    inscription
  end

end

