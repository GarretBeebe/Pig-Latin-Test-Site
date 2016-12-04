class Phrase < ActiveRecord::Base
  validates :english_phrase, presence: true
  validates :pig_latin_phrase, presence: true

  def to_piglatin(str)
    str.gsub(/\b(\w)(\S+)\b/, '\2\1ay')
  end

  def capitalize(string)
    lowercase_string = string.downcase
    return string if string == lowercase_string
    lowercase_string.capitalize
  end

  def create_pig_phrase
    final_array = []
    english_phrase = self.english_phrase
    word_array = to_piglatin(english_phrase).split(' ')
    word_array.each do |string|
      final_array.push(capitalize(string))
    end

    pig_phrase = final_array.join(' ')
    self.pig_latin_phrase = pig_phrase
  end
end
