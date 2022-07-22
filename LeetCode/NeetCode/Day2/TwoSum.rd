Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.

Are the integers sorted?
Are duplicates allowed?
what to return when we dont find an answer?

nums=[1,2,3,5]
target=6
o/p - [0,3] or [3,0]

## Bruteforce
def two_sum(nums,target):
  for i in range(len(nums)-1):
    for j in range(i+1,len(nums)):
      if nums[i]+nums[j]==target:
        return [i,j]
    return -1

T=O(n**2) S=O(1)

# Using dictionary
def two_sum(nums,target):
  d={}
  for i in range(len(nums)):
    if target-nums[i] in d.keys():
      return [d[target-nums[i]],i]
    d[nums[i]]=i
 return -1
T=O(n) S=O(n)


