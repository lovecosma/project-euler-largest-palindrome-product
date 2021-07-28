# Implement your procedural solution here!


def largest_palindrome_product

    num1 = 999
    num2 = 999
    prod = num1 * num2
    target = findNearestPalindrome(prod)
    
    until target % num1 == 0 && !(target / num1 > 1000)
        num1 -= 1
        if(num1 < 100)
            target = findNearestPalindrome(target)
           num1 = 999
        end 
    end 




    return target

end 

def findNearestPalindrome(num)
    if isPalindrome(num)
        num -= 1
    end 
    while !isPalindrome(num)
        num -= 1
    end 
    return num
end 

def isPalindrome(num)
    string_num = num.to_s
    if(string_num == string_num.reverse)
        true
  else
        false
  end 
end 