#write your code here
def add(num1, num2)
    return num1 + num2
end

def subtract(num1, num2)
    return num1 - num2
end

def sum(arr_num)
    sum = 0
    arr_num.each do |i|
        sum += i
    end
    return sum
end

def multiply(arr_num)
    produit = 1
    arr_num.each do |i|
        produit *= i
    end
    return produit
end

def puissance(num, puis)
    resultat = 1
    puis.times do
        resultat *= num
    end
    return resultat
end

def factor(num)
    if num <= 1
        return 1
    else
        num * factor(num - 1)
    end
end