class PigLatinizer
    
    def piglatinize(input_string)
        input_string.split(" ").map { |word| piglatinize_word(word)}.join(" ")
    end

    def vowel?(char)
        char.match(/[aAeEiIoOuU]/)
    end

    def piglatinize_word(word)
        if vowel?(word[0])
            word + "way"
        else 
            vowel_index = word.index(/[aAeEiIoOuU]/)
            consonants = word.slice(0..vowel_index - 1)
            leftover_word = word.slice(vowel_index..word.length)
            leftover_word + consonants + "ay"
        end
    end

end