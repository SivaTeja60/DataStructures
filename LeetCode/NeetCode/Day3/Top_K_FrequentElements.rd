Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.
Input: nums = [1,1,1,2,2,3], k = 2
Output: [1,2]

Are numbers sorted?
Is it just occurance or occurance consecutively?
Should we return top k frequent elements?

def frequent_elements(nums,k):
  d={}
        res=[]
        for i,val in enumerate(nums):
                d[val]=d.get(val,0)+1
        for key,values in sorted(d.items(), key=lambda x:x[1],reverse=True):
            if k<=0:
                return res
            res.append(key)
            k-=1

T=O(nlogn). S=O(n)

# can be optimised by not using sorting?
  

