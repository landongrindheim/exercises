class Bob
  def hey(blah)
    if yelling?(blah)
      'Whoa, chill out!'
    elsif question?(blah)
      'Sure.'
    elsif ignoring?(blah)
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end

  private 
    def question?(blah)
      blah.match(/\?\Z/)
    end

    def yelling?(blah)
      loud_words(blah) > half_of(blah)
    end

    def ignoring?(blah)
      !blah.match(/\w/)
    end

    def loud_words(blah)
      blah.scan(/[A-Z]{2,}/).length
    end

    def half_of(blah)
      blah.scan(/[a-zA-Z]*[^\s\d\p{P}]/).length / 2
    end
end
