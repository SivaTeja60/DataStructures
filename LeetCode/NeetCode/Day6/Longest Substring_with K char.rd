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

