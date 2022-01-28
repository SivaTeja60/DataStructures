# Search in Rotated Sorted Array

[LeetCodeLink](https://leetcode.com/problems/search-in-rotated-sorted-array/)

log(n) Approach:
Consider the following array
[4,5,6,7,0,1,2]
At every index either right or left part of it will be sorted  
4 - left sorted  
5 - left sorted  
6 - left sorted  
7 - left sorted  
0 - right sorted  
1 - right sorted  
2 - right sorted  
## Checking which side is sorted
To check left sorted compare mid to low value (i.e. low<=mid) if that condition fails then it sorted in right side  

'''
#Leftsorted  
if nums[mid] >= nums[low]:  
  #checking if value exist in left part  
  if target >= nums[low] and target <= nums[mid]:  
    high = mid-1  
  else:  
    low = mid + 1  

 '''  
 '''  
#Rightsorted  
If nums[mid]<=nums[high]:  
  if nums[mid] <= target and target <= nums[high]:  
    low = mid+1  
  else:  
    high = mid-1  
'''  
[UsefulLink](https://www.youtube.com/watch?v=r3pMQ8-Ad5s)
