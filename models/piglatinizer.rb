class PigLatinizer 
    attr_accessor :text

    def initialize(text=nil)
        @text = text
    end

    def piglatinize
        text_array = @text.split
        result_array = []

        text_array.each do |text|
            position = text.downcase.index(/[aeiou]/)
            if position == 0
                result_array << (text + "way")
            elsif position == 1
                result_array << (text[1..] + text[0] + "ay")
            elsif position == 2
                result_array << (text[2..] + text[0] + text[1] + "ay")
            elsif position == 3
                result_array << (text[3..] + text[0] + text[1] + text[2] + "ay")
            end
        end

        result_string = result_array.join(" ")
        result_string
    end
end