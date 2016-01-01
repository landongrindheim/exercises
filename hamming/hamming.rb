class Hamming
  VERSION = 1 

  def self.compute(str1, str2)
     raise ArgumentError if str1.length != str2.length
     counter = 0
     str1.each_char.with_index do |char, i|
       unless char == str2[i]
         counter += 1
       end
     end
     counter
  end
end
