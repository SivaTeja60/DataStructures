You are given an integer array nums consisting of n elements, and an integer k.

Find a contiguous subarray whose length is equal to k that has the maximum average value and return this value. Any answer with a calculation error less than 10-5 will be accepted.

[1,2,3,4,5,6]
k=3
max_sum=0
#Grokking
def max_average(nums,k):
  max_sum=float('-inf')
        for i in range(len(nums)-k+1):
            temp_sum=0
            for j in range(i,i+k):
                temp_sum+=nums[j]
            max_sum=max(max_sum,temp_sum/k)
        return max_sum
        

T=O(n*k) S=O(1)

#Sliding Window
def max_average(nums,k):
  temp_sum=0
        for i in range(k):
            temp_sum+=nums[i]
        max_sum=temp_sum/k
        for i in range(k,len(nums)):
            temp_sum=(temp_sum-nums[i-k]+nums[i])
            max_sum=max(temp_sum/k,max_sum)
        return max_sum

T=O(n) S=O(1)
    
 #More Optimised Sliding window
def max_average(nums,k):
  win_start=0
        win_sum=0
        max_avg=float('-inf')
        for win_end in range(len(nums)):
            win_sum+=nums[win_end]
            if win_end >= k-1:
                max_avg=max(max_avg,win_sum/k)
                win_sum-=nums[win_start]
                win_start+=1
        return max_avg
T=O(n) S=O(1)
    
