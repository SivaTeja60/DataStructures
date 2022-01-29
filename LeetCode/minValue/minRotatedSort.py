#N- Time Complexity
class Solution:
    def findMin(self, nums: List[int]) -> int:
        min=nums[0]
        l=len(nums)-1
        if (nums[0]<nums[l]) or l==0:
            return nums[0]
        for i in range(0,l):
            if nums[i+1]<nums[i]:
                return nums[i+1]
            
# Logn Time Complexity
class Solution:
    def findMin(self, nums: List[int]) -> int:
        l = 0
        h = len(nums)-1
        m = int(l+h)//2
        while(l <= h):
            m = (l+h)//2
            if nums[m] < nums[h]:
                h = m
            else:
                l = m+1
        return nums[m]
