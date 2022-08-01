Given the head of a Singly LinkedList that contains a cycle, write a function to find the starting node of the cycle.

def detectcycle(head):
  visited=[]
  while head:
    if head in visited:
      return head
    head=head.next
  return False

T=O(n) S=O(n)
    
