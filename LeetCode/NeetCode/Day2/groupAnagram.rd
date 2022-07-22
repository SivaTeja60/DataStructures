Given an array of strings strs, group the anagrams together. You can return the answer in any order.

An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

A=[tan,ant,eat,tea,tab]
Op = [[tan,ant],[eat,tea],[tab]]

what if we dont have any input?

#Brute force
def group_anagram(A):
  res=[]
  for i in range(len(A)-1):
    if A[i] in res:
      continue
    for j in range(i+1,len(A)):
        if sorted(A[i])==sorted(A[j]):
            res.append([A[i],A[j]])
            continue
    res.append(A[i])
  res.append(A[-1])
  return res.append(A[len(]
T=O(n**3) S=O(n)
                          
def group_anagram(A):
  d={}
  res=[]
  for i in range(len(A)):
     if d[sorted(A[i])] in d.keys():
         d[sorted(A[i])]+=A[i]
      else:
         d[sorted(A[i])]=A[i]
   for key in d:
      res.append(d[key])
   return res
 T=O(n**2) S=O(n)                       
           
