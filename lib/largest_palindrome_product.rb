def largest_palindrome_product

    factor1 = 999
    factor2 = 999
    product = factor1 * factor2
    target = nextPalindrome(product)

    until target % factor1 == 0 && target / factor1 < 999
        if(factor1 < 100)
            factor1 = 999
            target = nextPalindrome(target)
        end 

        factor1 -= 1
    end 

    target

end 

def nextPalindrome(num)

    if isPalindrome(num)
        num -= 1
    end 

    until isPalindrome(num)
        num -= 1
    end 
    num
end 

def isPalindrome(num)
    if(num.to_s == num.to_s.reverse)
        true
    else
        false
    end 
end 