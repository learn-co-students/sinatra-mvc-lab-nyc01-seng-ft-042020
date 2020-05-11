class PigLatinizer
    attr_reader :converted
    def initialize

    end
    def piglatinize(string)
        vowels = ['a','e','i','o','u','A','E','I','O','U']
        arr = string.split(' ')
        arr.map do |word|
            word.length.times do |i|
                if vowels.include?(word[i])
                    if i==0
                        word= word+'way'
                        break
                    elsif
                        word=word[i..word.length-1]+word[0..i-1]+'ay'
                        break
                    end
                end
            end
           word
        end.join(' ')
    end
end