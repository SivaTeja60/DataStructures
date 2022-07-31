Given an array of sorted numbers, remove all duplicates from it. 
You should not use any extra space; after removing the duplicates in-place return the new length of the array.

Input=[1,2,3,3,4,5,5]
Output=5

def remove_duplicates(nums):
  left=0
  right=1
  while right<len(nums):
    if nums[left]==nums[right]:
      del(nums[right])
    else:
      right+=1
      left+=1
  return len(nums)
T=O(n) S=O(1)
  
