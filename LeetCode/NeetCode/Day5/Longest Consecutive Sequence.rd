Given an unsorted array of integers nums, return the length of the longest consecutive elements sequence.

You must write an algorithm that runs in O(n) time.

what to return if length is 0?
what if we have repeated nums?

Input: nums = [100,4,200,1,3,2]
sorted=[1,2,3,4,100,200]
Output: 4

def sequence(nums):
  if len(nums)==0:
    return 0
  max_s=1
  n=sorted(nums).  ---> O(nlogn)
  for i in range(len(n)-1): -->O(n)
    temp=n[i]
    temp_max=1
    for j in range(i+1,len(n)): --->O(n)
      if n[j]-temp != 1:
        max_s=max(temp_max,max_s)
        break
      temp=n[j]
      temp_max+=1
  return max(max_s,temp_max)  //Because what if eneter array has consecutive elements which is why used max

T=O(n**2) S=O(n)
      
def sequence(nums):
  if len(nums)==0:
    return 0        
  d={}
  max_s=1
  temp_max=1
  for i,val in enumerate(nums):
    d[val]=i
  for key in d.keys():
    if key+1 in d.keys():
      temp_max+=1
      max_s=max(max_s,temp_max)
    else:
      temp_max=1
   return max_s

T=O(n) S=O(n)
