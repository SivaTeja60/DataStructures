Given an array of sorted numbers and a target sum, find a pair in the array whose sum is equal to the given target.

Input=[1,3,4,5,6] target=8
Output=[1,3]

#Bruteforce
def target_sum(numbers, target):
  for i in range(len(numbers)-1):
            for j in range(i+1,len(numbers)):
                if numbers[i]+numbers[j]==target:
                    return [i+1,j+1]
        return -1
  return -1
T=O(n**2) S=O(1)

#Using Dictionary
def target_sum(numbers, target):
  d={}
        for i,val in enumerate(numbers):
            if target-val in d:
                return [d[target-val]+1,i+1]
            d[val]=i
        return -1
T=O(n) S=O(n)

# Using 2 pointers as array is sorted
def target_sum(numbers, target):
  left=0
        right=len(numbers)-1
        while left<right:
            if numbers[left]+numbers[right]>target:
                right-=1
            elif numbers[left]+numbers[right]<target:
                left+=1
            else:
                return [left+1,right+1]
        return -1
T=O(n) S=O(1)
      
