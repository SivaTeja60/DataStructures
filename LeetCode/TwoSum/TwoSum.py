class Solution(object):
    def twoSum(self, nums, target):
        for i in range(0, len(nums)-1):
            if target-nums[i] in nums[i+1:len(nums)]:
                return [i, nums[i+1:len(nums)].index(target-nums[i])+(i+1)]
