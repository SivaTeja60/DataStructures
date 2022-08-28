#Bruteforce

def max_area(height):
  left=0
        right=1
        max_area=0
        if len(height)==0:
            return 0
        else:
            for i,val in enumerate(height):
                left=i
                right=len(height)-1
                while left<right:
                    a=min(val,height[right])*(right-left)
                    right-=1
                    max_area=max(a,max_area)
        return max_area

T=O(n**2)
S=O(1)

# Optimised

def max_area(height):
  left=0
        right=len(height)-1
        max_area=0
        while left<right:
            a=min(height[left],height[right])*(right-left)
            max_area=max(a,max_area)
            if height[left]<=height[right]:
                left+=1
            else:
                right-=1
        return max_area
T=O(n)
S=O(1)
