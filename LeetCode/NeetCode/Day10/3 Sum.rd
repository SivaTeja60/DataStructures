Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.
Input: nums = [-1,0,1,2,-1,-4]
sorted = [-4,-1,-1,0,1,2]
Output: [[-1,-1,2],[-1,0,1]]

#Bruteforce
def threesum(nums):
  res=[]
        nums.sort()
        for i,val in enumerate(nums):
    
            if i>0 and val==nums[i-1]:
                continue
            left=i+1
            right=len(nums)-1
            while left<right:
                if nums[right]+nums[left]+nums[i]<0:
                    left+=1
                elif nums[right]+nums[left]+nums[i]>0:
                    right-=1
                else:
                    res.append([nums[i],nums[left],nums[right]])
                    left+=1
                    while nums[left]==nums[left-1] and left<right:
                        left+=1
        return res
