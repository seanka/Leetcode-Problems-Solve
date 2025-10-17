class Solution {
    func numberGame(_ nums: [Int]) -> [Int] {
        var result = nums.sorted { $0 < $1 }
        
        for i in 0..<result.count {
            guard i % 2 != 0 else { continue }
            
            let temp = result[i]
            
            result[i] = result[i-1]
            result[i-1] = temp
        }
        
        return result
    }
}

let nums = [5,4,2,3]
print(Solution().numberGame(nums))
