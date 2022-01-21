class Solution:
    def maxProduct(self, nums: List[int]) -> int:
        curr_max, curr_min = 1, 1
        res = nums[0]
        for i in nums:
            val = (i, curr_max*i, curr_min*i)
            curr_max = max(val)
            curr_min = min(val)
            res = max(res, curr_max)
        return res
