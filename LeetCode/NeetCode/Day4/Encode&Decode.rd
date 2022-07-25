Design an algorithm to encode a list of strings to a string. The encoded string is then sent over the network and is decoded back to the original list of strings.
 link - [https://leetcode.com/problems/encode-and-decode-strings/]

Can i use of my own pattern to design encode and decode?
Are only alphabets allowed?
Both capital and small letters allowed?

Input: dummy_input = ["Hello","World"]
Output: ["Hello","World"]

def string_encode(str):
  s=[]
  for i,val in enumerate(str):
    temp=''
    for c in val:
      temp+=chr((ord(c)+ord(a))
    s.append(temp)
    
  return s
  
  def string_decode(s):
    str=[]
    for i,val in enumerate(s):
      temp=''
      for c in val:
        temp+=chr((ord(c)-ord(a))
      str.append(temp)
     return str
     
    T=O(n*m) --> n is length of list and m is max word size
    S=O(n)
    
      
