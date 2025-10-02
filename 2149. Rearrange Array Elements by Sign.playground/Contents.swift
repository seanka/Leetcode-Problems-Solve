class Solution {
    func rearrangeArray(_ nums: [Int]) -> [Int] {
        var positive: [Int] = []
        var negative: [Int] = []
        var result: [Int] = []
        
        for num in nums {
            if num >= 0 {
                positive.append(num)
            } else {
                negative.append(num)
            }
        }
        
        for i in 0..<(nums.count / 2) {
            result.append(positive[i])
            result.append(negative[i])
        }
            
        return result
    }
}

let nums = [3,1,-2,-5,2,-4]
print(Solution().rearrangeArray(nums))
