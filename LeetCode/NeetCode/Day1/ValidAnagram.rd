Given two strings s and t, return true if t is an anagram of s, and false otherwise.

An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

s=ant
t=tan
what if strings are empty?
Does the length of 2 strings are same?

len(s)---->m
len(t)---->n

 def ValidAnagram(s,t):
   if sorted(s)==sorted(t):
    return True
  return False

T=O(nlogn) S=O(1)

def ValidAnagram(s,t):
   if len(s)!=len(t):
      return False
  for char in s:
     if s.count(char)!=t.count(char):
        return False
  return True

T=O(n**2) S=O(1)

def ValidAnagram(s,t):
   if len(s)!=len(t):
      return False
  d1={}
  d2={}
  for char in s:
    if char in d1.keys():
      d1[char]+=1
    else:
      d1[char]=1
  for char in t:
      if char in d2.keys():
        d2[char]+=1
      else:
        d2[char]=1
  if d1==d2:
    return True
  return False
 
 T=O(max(m,n)) s=O(m+n)
 
 def ValidAnagram(s,t):
   if len(s)!=len(t):
            return False
        d1={}
        d2={}
        for i in range(len(s)):
            d1[s[i]]= 1+ d1.get(s[i],0)
            d2[t[i]]= 1+ d2.get(t[i],0)
        for c in d1:
            if d1[c] != d2.get(c,0):
                return False
        return True
     
    T=O(n) S=O(s+T) or O(1) as dictionary will be constant size of 26 as we have 26 alphabets no matter what size is s and t
    
 # Using single dictionary
 def ValidAnagram(s,t):
  if len(s)!=len(t):
            return False
        d1={}
        
        for i in range(len(s)):
            d1[s[i]]= 1+ d1.get(s[i],0)
        for char in t:
            if char in d1:
                d1[char]-=1
            else:
                return False
        for value in d1.values():
            if value!=0:
                return False       
        return True
    
