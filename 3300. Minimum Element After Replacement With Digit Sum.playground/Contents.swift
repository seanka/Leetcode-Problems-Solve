class Solution {
    func minElement(_ nums: [Int]) -> Int {
        var nums = nums
        
        for (index, num) in nums.enumerated() {
            var sum = 0
            String(nums[index]).map{ sum += $0.wholeNumberValue! }
            
            nums[index] = sum
        }
        
        print(nums)
        return nums.sorted().first!
    }
}

let nums = [999,19,199]
print(Solution().minElement(nums))
