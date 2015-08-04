class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    hash = {}
    words = @phrase.split(/[!&@$%^,:\.\s+]/).delete_if(&:empty?)
    words.each(&:downcase!)
    uniq_words = words.uniq

    uniq_words.each do |uniq_word|
      hash[uniq_word] = words.select { |word| word == uniq_word }.count
    end

    hash
  end
end