class Solution {
    func decompressRLElist(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        
        for (index, num) in nums.enumerated() {
            if (index+1) % 2 == 0 { continue }
            
            for o in 0..<num {
                result.append(nums[index+1])
            }
        }
        
        return result
    }
}

let nums = [1,1,2,3]
print(Solution().decompressRLElist(nums))
