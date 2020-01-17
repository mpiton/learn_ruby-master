#write your code here
def echo(message)
    message.to_s
end

def shout(message)
    message.upcase
end

def repeat(message, rep = 2)
    result = ""
    if rep < 2
        return message
    elsif rep == 2 
        return message + " " + message
    else
        result = message
        (rep - 1).times do
            result += " " + message
        end
        return result
    end
end

def start_of_word(message, place)
    message[0...place]
end

def first_word(message)
    message.split(" ").first
end

def titleize(message)
    message.capitalize!
    lower = ["and", "or", "the", "over", "to","the", "a", "but" ]
    phrase = message.split(" ").map {|word| 
    if lower.include?(word) 
        word
    else
        word.capitalize
    end
}.join(" ")
phrase  
end