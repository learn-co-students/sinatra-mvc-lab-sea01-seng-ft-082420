class PigLatinizer
    def piglatinize(string)
        words = string.split(' ')
        words.map! do |word|
            word_array = word.split('') 
            while !word_array[0].downcase.match(/a|e|i|o|u/)
                word_array << word_array.shift
            end
            word_array << "w" if word_array.join('') == word
            word_array += ["a","y"]
            word = word_array.join('')
        end
        words.join(' ')
    end
end