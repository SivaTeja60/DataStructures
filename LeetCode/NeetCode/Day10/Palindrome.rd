A phrase is a palindrome if, 
after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers


def isPalindrome(s):
  start=0 
        end=len(s)-1
        while start<end:
            while not s[start].isalnum() and start<end:
                start+=1
            while not s[end].isalnum() and start<end:
                end-=1
            if s[start].lower() != s[end].lower():
                return False
            start+=1
            end-=1
        return True
        
