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
