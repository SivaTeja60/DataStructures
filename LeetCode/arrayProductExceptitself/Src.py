class Solution:
    def productExceptSelf(self, nums: List[int]) -> List[int]:
        ans=1
        left=[1]
        n=len(nums)
        for i in range (1,n):
            ans=ans*nums[i-1]
            left.append(ans)
        res=[]
        right=1
        for j in range(n-1,-1,-1):
            res.append(left[j]*right)
            right=right*nums[j]
        return reversed(res)
            