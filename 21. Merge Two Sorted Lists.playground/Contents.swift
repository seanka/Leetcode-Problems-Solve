public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        let sortedList = ListNode()
        var allListValue: [Int] = []
        
        var head = list1
        while head?.val != nil {
            allListValue.append(head!.val)
            head = head?.next
        }
        
        head = list2
        while head?.val != nil {
            allListValue.append(head!.val)
            head = head?.next
        }
        
        allListValue = allListValue.sorted()
        
        var current = sortedList
        for value in allListValue {
            current.next = ListNode(value)
            current = current.next!
        }
        
        return sortedList.next
    }
}

func createLinkedList(_ intArray: [Int]) -> ListNode? {
    let dummy = ListNode()
    
    var current = dummy
    for value in intArray {
        current.next = ListNode(value)
        current = current.next!
    }
    return dummy.next
}

func printLinkedList(_ head: ListNode?) {
    var result: [Int] = []
    
    var current = head
    while current != nil {
        result.append(current!.val)
        current = current!.next
    }
    print(result)
}

let sol = Solution()

let list1 = createLinkedList([1, 2, 4])
let list2 = createLinkedList([1, 3, 4])
let result = sol.mergeTwoLists(list1, list2)
printLinkedList(result)
