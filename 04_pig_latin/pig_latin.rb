#write your code here
def translate(words)
    
    mots = words.split(" ")
    resultat = []

    if mots.length == 1
        return pig_latin_one_word(words)
    else        
        mots.each do |word|
            resultat << pig_latin_one_word(word)
        end
    end   

    return resultat.join(" ")
 
end


def pig_latin_one_word(word)
    vowels = "aeiou"
    traduit = ""

    if word.include?("qu")
        location = word.index("qu")
        traduit = word[location + 2..-1] + word[0...location] + "quay"
        return traduit
    else    
        word.each_char.with_index do |char, i|
            if vowels.include?(char) && (i == 0)
                traduit = word + "ay"
                return traduit
            elsif vowels.include?(char)
                traduit = word[i..-1] + word[0...i] + "ay"
                return traduit
            end    
        end
    end
end