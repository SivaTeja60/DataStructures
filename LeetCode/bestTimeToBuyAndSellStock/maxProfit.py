#Solution
class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        maxProfit, minValue = 0, float('inf')
        for i in prices:
            minValue = min(i, minValue)
            profit = i-minValue
            maxProfit = max(profit, maxProfit)
        return maxProfit

    
    #Using Kadanes Algorithm
    class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        max_profit,profit=0,0
        for i in range(1,len(prices)):
            profit=max(0,profit+ prices[i]-prices[i-1])
            max_profit=max(profit,max_profit)
        return max_profit
