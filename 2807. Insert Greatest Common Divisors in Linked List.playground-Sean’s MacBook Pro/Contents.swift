public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func insertGreatestCommonDivisors(_ head: ListNode?) -> ListNode? {
        var current = head
        let newHead = ListNode(head!.val)
        var tail = newHead
        
        while current != nil {
            if current?.next == nil { break }
            
            let curVal: Int = current!.val
            let nextCurVal: Int = current!.next!.val

            let minVal = min(curVal, nextCurVal)
            
            var commonDivisor: Int = minVal
            
            for i in (1..<minVal+1).reversed() {
                if curVal % i == 0 && nextCurVal % i == 0 {
                    commonDivisor = i
                    break
                }
            }
            
            let newNode = ListNode(commonDivisor)
            let nextNode = ListNode(nextCurVal)
            
            tail.next = newNode
            tail = newNode
            tail.next = nextNode
            tail = nextNode
            
            current = current!.next!
        }
        
        return newHead
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

let head = createLinkedList([18,6,10,3])
let result = sol.insertGreatestCommonDivisors(head)
printLinkedList(result)

