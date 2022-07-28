Given an array of positive integers nums and a positive integer target, return the minimal length of a contiguous subarray [numsl, numsl+1, ..., numsr-1, numsr] of which the sum is greater than or equal to target. 
If there is no such subarray, return 0 instead.

Input=[1,2,3,4,5] target=9
op - 2 ---[4,5]

#Brute force
def min_size(nums,target):
  min_size=float('inf')
        for i in range(len(nums)):
            temp_sum=0
            for j in range(i,len(nums)):
                temp_sum+=nums[j]
                if temp_sum >= target:
                    min_size=min(min_size,(j-i+1))
        if min_size == float('inf'):
            return 0
        return min_size

T=O(n**2) S=O(1)

#Sliding Window
def min_size(nums,target):
  win_start,win_sum=0,0
        min_size=float('inf')
        for win_end in range(len(nums)):
            win_sum+=nums[win_end]
            while win_sum>=target:
                min_size=min(min_size,(win_end-win_start+1))
                win_sum-=nums[win_start]
                win_start+=1
        return min_size if min_size != float('inf') else 0
      
T=O(n) S=O(1)
      
                 
