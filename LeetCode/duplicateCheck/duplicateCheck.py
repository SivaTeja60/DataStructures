# Using Set
# Set doesnt allow duplicates
class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        if len(nums) == len(set(nums)):
            return False
        return True
    
# Using Dictionary
# Dictonary doesnt allow duplicates
    class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        res=dict.fromkeys(nums)
        if len(res)==len(nums):
            return False
        return True
