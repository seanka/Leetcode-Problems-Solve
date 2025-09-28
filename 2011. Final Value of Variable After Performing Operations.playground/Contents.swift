class Solution {
    func finalValueAfterOperations(_ operations: [String]) -> Int {
        var outputValue: Int = 0
        
        for operation in operations {
            if operation.contains("--") {
                outputValue -= 1
            } else {
                outputValue += 1
            }
        }
        
        return outputValue
    }
}

let input = ["++X","++X","X++"]
let sol = Solution()
print(sol.finalValueAfterOperations(input))
