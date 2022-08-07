Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.
Input: nums = [-1,0,1,2,-1,-4]
Output: [[-1,-1,2],[-1,0,1]]

#Bruteforce
def threesum(nums):
  res=[]
if len(nums)==3:
  return res if sum(nums)!=0 else [nums[0],nums[1],nums[2]]
  for i in range(len(nums)-3):
    for j in range(i+1,len(nums)-2):
      for k in range(j+1,len(nums)-1):
        if nums[i]+nums[j]+nums[k]==0:
            res.append([nums[i],nums[j]+nums[k])
   return res
                        
 T=O(n**3)
 S=O(n**2)
        
