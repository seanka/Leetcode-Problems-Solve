# Definition for singly-linked list.
class ListNode(object):
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next


class Solution(object):
    def insertGreatestCommonDivisors(self, head):
        current = head
        while current and current.next:

            firstValue = current.val
            secondVal = current.next.val
            # print(f"Comparing {firstValue} with {secondVal}")

            for x in range(min(firstValue, secondVal), 0, -1):
                if firstValue % x == 0 and secondVal % x == 0:
                    newNode = ListNode(x)
                    newNode.next = current.next
                    current.next = newNode
                    current = newNode.next
                    break

        return head


def print_list(head):
    while head:
        print(head.val, end=" -> ")
        head = head.next
    # print("None")


head = ListNode(18, ListNode(6, ListNode(10, ListNode(3))))

sol = Solution()
new_head = sol.insertGreatestCommonDivisors(head)
print_list(new_head)
