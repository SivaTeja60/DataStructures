Given the head of a Singly LinkedList, write a function to determine if the LinkedList has a cycle in it or not.
  
def linkedlist_cycle(head):
  visited=[]
  while head:
    if head in visited:
      return True
    visited.append(head)
    head=head.next
  return False

T=O(n) S=O(n)

def linkedlist_cycle(head):
  slow=fast=head
        while fast and fast.next:
            slow=slow.next
            fast=fast.next.next
            if slow==fast:
                return True
        return False

T=O(n) S=O(1)
    
