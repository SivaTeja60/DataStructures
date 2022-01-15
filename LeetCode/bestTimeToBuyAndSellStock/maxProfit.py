class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        maxProfit, minValue = 0, float('inf')
        for i in prices:
            minValue = min(i, minValue)
            profit = i-minValue
            maxProfit = max(profit, maxProfit)
        return maxProfit
