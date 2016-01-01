class Phrase
  VERSION = 1

  attr_reader :words

  def initialize(words)
    @words = words
  end

  def word_count
    words_hash = Hash.new(0)
    word_regex = /\b[\w\']+\b/
    words.scan(word_regex).each do |word|
      words_hash[word.downcase] += 1
    end
    words_hash
  end

end
