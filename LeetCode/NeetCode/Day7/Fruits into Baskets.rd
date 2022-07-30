You are visiting a farm that has a single row of fruit trees arranged from left to right. The trees are represented by an integer array fruits where fruits[i] is the type of fruit the ith tree produces.

You want to collect as much fruit as possible. However, the owner has some strict rules that you must follow:

You only have two baskets, and each basket can only hold a single type of fruit. There is no limit on the amount of fruit each basket can hold.
Starting from any tree of your choice, you must pick exactly one fruit from every tree (including the start tree) while moving to the right. The picked fruits must fit in one of your baskets.
Once you reach a tree with fruit that cannot fit in your baskets, you must stop.

Input = [1,2,1,3]
Output = 3

# Brute force
def max_fruits(fruits):
  max_len=1
        for i in range(len(fruits)-1):
            temp=[fruits[i]]
            for j in range(i+1,len(fruits)):
                temp.append(fruits[j])
                if len(set(temp)) > 2:
                    break
                max_len=max(max_len,len(temp))
        return max_len
T=O(n**2) S=O(n)

#sliding window
def max_fruits(fruits):
  max_len=1
        left=0
        d={}
        for right,val in enumerate(fruits):
            if val in d:
                d[val]+=1
            else:
                d[val]=1
            while len(d)>2:
                d[fruits[left]]-=1
                if d[fruits[left]]==0:
                    del(d[fruits[left]])
                left+=1
            max_len=max(max_len,right-left+1)
        return max_len
T=O(n) S=O(1)
