Given an array of strings strs, group the anagrams together. You can return the answer in any order.

An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

A=[tan,ant,eat,tea,tab]
Op = [[tan,ant],[eat,tea],[tab]]

what if we dont have any input?

#Brute force
def group_anagram(A):
  res=[]
  visited=[]
        for i,val in enumerate(A):
            if i == len(A)-1:
                break
            if val not in visited:
                temp=[val]
                visited.append(val)
                for val2 in A[i+1:]:
                    if sorted(val)==sorted(val2):
                        temp.append(val2)
                        visited.append(val2)
                res.append(temp)
        if A[len(A)-1] not in visited:
            res.append([A[len(A)-1]])
        return res
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
           
