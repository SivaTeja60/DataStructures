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

# Using Heap
import heapq
def frequent_elements(nums,k):
  d={}
        res=[]
        for i,val in enumerate(nums):
            d[val]=d.get(val,0)+1
        h=[]
        for key,val in d.items():
            heapq.heappush(h,(-val,key))
        while h:
            val,key=heapq.heappop(h)
            res.append(key)
            if len(res)==k:
                return res
Extraction from heap:O(logN)
We extract K elements.so,
Time:O(klogN)
if k is O(N),then Time:O(NlogN)
Space:O(N)


# Using modified bucket sorting
def frequent_elements(nums,k):
  d={}
        res=[]
        freq=[[] for i in range(len(nums)+1)]
        for i,val in enumerate(nums):
            d[val]=d.get(val,0)+1
        for key,val in d.items():
            freq[val].append(key)
        for i in range(len(freq)-1,0,-1):
            for j in freq[i]:
                res.append(j)
                if len(res)==k:
                    return res
        
T=O(n) S=O(n)  
              
