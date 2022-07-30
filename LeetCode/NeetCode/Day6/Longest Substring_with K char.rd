Given a string s and an integer k, return the length of the longest substring of s that contains at most k distinct characters.
Input: s = "eceba", k = 2
Output: 3
def longest_substring(s,k):
  max_len=0
        temp=""
        for win_end in s:
            temp+=win_end
            if len(set(temp))>k:
                temp=temp[1:]
            max_len=max(max_len,len(temp))
        return max_len
T=O(n**2) S=O(1)

def longest_substring(s,k):
  max_len=0
        left=0
        d={}
        for right,val in enumerate(s):
            if val in d.keys():
                d[val]+=1
            else:
                d[val]=1
            while len(d)>k:
                d[s[left]]-=1
                if d[s[left]]==0:
                    del(d[s[left]])
                left+=1
            max_len=max(max_len,right-left+1)
        return max_len
T=O(n) S=O(k)
