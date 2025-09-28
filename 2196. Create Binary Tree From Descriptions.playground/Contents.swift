
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func createBinaryTree(_ descriptions: [[Int]]) -> TreeNode? {
        // [[20,15,1],[20,17,0],[50,20,1],[50,80,0],[80,19,1]]
        // [parenti, childi, isLefti]
        
        // [[1,2,1],[2,3,0],[3,4,1]]
        
        // 1. search for root
        // when parent of description isn't a child of another description
        
        for description in descriptions {
            
        }
        
        return TreeNode(0)
    }
}

func printTreeTopDown(_ root: TreeNode?) {
    func buildLines(_ node: TreeNode?) -> [String] {
        guard let node = node else { return [] }
        
        let valStr = "\(node.val)"
        
        let leftLines = buildLines(node.left)
        let rightLines = buildLines(node.right)
        
        let leftWidth = leftLines.first?.count ?? 0
        let rightWidth = rightLines.first?.count ?? 0
        
        // Node line
        let firstLine = String(repeating: " ", count: leftWidth) + valStr + String(repeating: " ", count: rightWidth)
        
        // Connector line
        let slashLine: String
        if node.left != nil || node.right != nil {
            let leftSlash = node.left != nil ? "/" : " "
            let rightSlash = node.right != nil ? "\\" : " "
            slashLine = String(repeating: " ", count: max(leftWidth - 1, 0)) +
                        leftSlash +
                        String(repeating: " ", count: valStr.count) +
                        rightSlash
        } else {
            slashLine = ""
        }
        
        // Merge child lines
        var mergedLines: [String] = []
        let maxChildLines = max(leftLines.count, rightLines.count)
        for i in 0..<maxChildLines {
            let leftPart = i < leftLines.count ? leftLines[i] : String(repeating: " ", count: leftWidth)
            let rightPart = i < rightLines.count ? rightLines[i] : String(repeating: " ", count: rightWidth)
            mergedLines.append(leftPart + String(repeating: " ", count: valStr.count) + rightPart)
        }
        
        var result = [firstLine]
        if !slashLine.isEmpty {
            result.append(slashLine)
        }
        result.append(contentsOf: mergedLines)
        
        return result
    }
    
    let lines = buildLines(root)
    for line in lines {
        print(line)
    }
}


let answer = Solution().createBinaryTree([[20,15,1],[20,17,0],[50,20,1],[50,80,0],[80,19,1]])
printTreeTopDown(answer)
