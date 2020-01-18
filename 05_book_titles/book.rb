class Book
    attr_accessor :title

    def title=(book_title)
        arr_title = book_title.split(" ")
        arr_title = [arr_title[0].capitalize] + arr_title[1..-1].map do |i|
            if ["and", "in", "the", "of", "a", "an"].include?(i)
                i
            else
                i.capitalize
            end
        end
        @title = arr_title.join(" ")
    end
end