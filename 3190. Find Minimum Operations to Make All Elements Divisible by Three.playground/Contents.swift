class Solution {
    func minimumOperations(_ nums: [Int]) -> Int {
        var numberOfOperationDone: Int = 0
        
        for num in nums {
            if num % 3 == 0 { continue }
            
            numberOfOperationDone += 1
        }
        
        return numberOfOperationDone
    }
}

let input = [3,6,9]
let sol = Solution()
print(sol.minimumOperations(input))
