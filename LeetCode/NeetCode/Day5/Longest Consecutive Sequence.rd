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
            for j in range(i+1,len(n)):
                if (n[j]-temp == 1):
                    temp=n[j]
                    temp_max+=1
                    max_s=max(max_s,temp_max)
                elif (n[j]-temp == 0):
                    continue
                else:
                    break
        return max_s 

T=O(n**2) S=O(n)
      
def sequence(nums):
  if len(nums)==0:
            return 0        
        d={}
        max_s=1
        temp_max=1
        for i,val in enumerate(nums):
            d[val]=i
        for key in sorted(d):
            if key+1 in d.keys():
                temp_max+=1
                max_s=max(max_s,temp_max)
            else:
                temp_max=1
        return max_s

T=O(nlogn) S=O(n)


def sequence(nums):
if len(nums)==0:
            return 0        
        d=set(nums)
        res=1
        for val in d:
            if val-1 in d:
                continue
            temp=1
            while val+temp in d:
                temp+=1
            res=max(res,temp)
        return res
        
 T=O(n) S=O(n)
