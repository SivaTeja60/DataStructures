Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

You must write an algorithm that runs in O(n) time and without using the division operation.

nums=[1,2,3,4]
[2,6,12,4]
Op = [24,12,8,6]

should i return 0 in case of empty input?
what to return when input array has just one input?

#Brute Force
def product_array(nums):
  res=[]
  if len(nums)==1 or len(nums)==0:
    return res
  for i in range(len(nums)):
  temp=1
    for j in range(len(nums)):
        if i==j:
          continue
        temp=temp*nums[j]
    res.append(temp)
  return res

T=O(n**2) S=O(n)

#By Divison
#Doesnt work when we have 0 in the input
def product_array(nums):
  res=[]
  temp=1
  if len(nums)==1 or len(nums)==0:
    return res
  for i in range(len(nums)):
    temp=temp*nums[i]
  for i in range(len(nums)):
      res.append(temp/nums[i])
  return res

T=O(n) S=O(n)
  


