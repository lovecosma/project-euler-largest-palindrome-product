# Implement your object-oriented solution here!
class LargestPalindromeProduct 

    def answer

        num1 = 999
        target = findNextPalindrome(num1 * 999)

        until target % num1 == 0 && !(target / num1 > 999)

            if(num1 < 100)
                num1 = 999
                target = findNextPalindrome(target)
            end 
            num1 -= 1

        end 
        

        target

    end 

    def isPalindrome?(num)
        string_num = num.to_s
        if(string_num == string_num.reverse)
            true
        else
            false
        end  
    end 

    def findNextPalindrome(num)

        if isPalindrome?(num)
            num -= 1
        end 

        while !isPalindrome?(num)
            num -= 1
        end 

        return num
    end 

end 