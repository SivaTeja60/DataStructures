Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

A=[1,2,3,4]  return False
B=[1,2,3,2,4] return True
what if array is empty?

# Brute Force

```
def containsDuplicate(A):
  for i in range(len(A)-1):
    for j in range(i+1,len(A)):
      if A[i]==A[j]:
        return True
  return False
```
  
  T=O(n**2) s=O(1)
  
  #By using sorted
 ```
 def containsDuplicate(A):
  for i in range(len(A)-1): 
    if A[i]==A[i+1]:
      return True
  return False
  ```
  T=O(nlogn) s=O(1)
## sorted function uses Tim sorting and time complexity is O(nlogn)
  
  #If not sorted
 ```
  def containsDuplicate(A):
    d={}
    for i in A:
      if i in d.keys():
        return True
      else:
        d[i]=1
   return False
 ```
   
   T=O(n) S=O(n)
    
    
  
