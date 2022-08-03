Given the head of a Singly LinkedList that contains a cycle, write a function to find the starting node of the cycle.

def detectcycle(head):
  visited=[]
  while head:
    if head in visited:
      return head
    head=head.next
  return False

T=O(n) S=O(n)

#Using Pointers
def cycle_start(self,head,length):
        fast=slow=head
        while length>0:
            fast=fast.next
            length-=1
        while slow != fast:
            slow=slow.next
            fast=fast.next
        return slow
            
    def cycle_length(self,slow):
        current=slow
        length=0
        while True:
            length+=1
            current=current.next
            if current==slow:
                break  
        return length
            
    def detectCycle(self, head: Optional[ListNode]) -> Optional[ListNode]:
        length=0
        fast=slow=head
        while fast and fast.next:
            slow=slow.next
            fast=fast.next.next
            if slow==fast:
                length=self.cycle_length(slow)
                break
            
        return None if length==0 else self.cycle(head,length)
          
Time Complexity=O(n) Space Complexity=O(1)
  
    
      
    
