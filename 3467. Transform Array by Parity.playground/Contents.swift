class Solution {
    func transformArray(_ nums: [Int]) -> [Int] {
        var result = nums
        
        for (index, digit) in nums.enumerated() {
            if digit % 2 == 0 {
                result[index] = 0
            } else {
                result[index] = 1
            }
        }
        
        return result.sorted(by: {$0 < $1})
    }
}

let nums = [4,3,2,1]
print(Solution().transformArray(nums))
