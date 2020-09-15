require 'pry'

class PigLatinizer

    def initialize
        
    end

    def piglatinize(string)
        words_split = string.split(" ")
        words = words_split.map { |word| piglatinize_word(word) }
        words.join(" ")
    end

    def piglatinize_word(word)
        first_letter = word[0].downcase
        vowels = ("aeiou")
        consonants = []

        if vowels.include?(first_letter)
            "#{word}way"
        else
            consonants << word[0]

            if !vowels.include?(word[1])
                consonants << word[1]
                if !vowels.include?(word[2])
                    consonants << word[2]
                end
            end
            "#{word[consonants.length..-1] + consonants.join + "ay"}"
        end
    end
end