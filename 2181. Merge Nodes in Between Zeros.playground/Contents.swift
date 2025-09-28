public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func mergeNodes(_ head: ListNode?) -> ListNode? {
        let linkedListValueAsArray = convertLinkedListToArray(head)
        var solutionArray: [Int] = []
        
        var tempSumValue = 0
        
        for (value) in linkedListValueAsArray {
            if value == 0 {
                if tempSumValue != 0 { solutionArray.append(tempSumValue) }
                tempSumValue = 0
                continue
            }
            
            tempSumValue += value
        }
        
        return createLinkedList(solutionArray)
    }
    
    private func convertLinkedListToArray(_ head: ListNode?) -> [Int] {
        var result: [Int] = []
        
        var current = head
        while current != nil {
            result.append(current!.val)
            current = current!.next
        }
        return result
    }
    
    private func createLinkedList(_ intArray: [Int]) -> ListNode? {
        let dummy = ListNode()
        
        var current = dummy
        for value in intArray {
            current.next = ListNode(value)
            current = current.next!
        }
        return dummy.next
    }
}

// MARK: - Solution without converting linked list into array
extension Solution {
    func mergeNodesAlt(_ head: ListNode?) -> ListNode? {
        var tempSumValue = 0
        var solutionArray: [Int] = []
        
        var current = head
        
        while current != nil {
            if current!.val != 0 { tempSumValue += current!.val }
            else if current!.val == 0 {
                if tempSumValue != 0 { solutionArray.append(tempSumValue) }
                tempSumValue = 0
            }
            
            current = current!.next
        }
        
        return createLinkedList(solutionArray)
    }
    
    private func createLinkedList(_ intArray: [Int]) -> ListNode? {
        let dummy = ListNode()
        
        var current = dummy
        for value in intArray {
            current.next = ListNode(value)
            current = current.next!
        }
        return dummy.next
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

let head = createLinkedList([0,1,0,3,0,2,2,0])
let result = sol.mergeNodesAlt(head)
printLinkedList(result)
