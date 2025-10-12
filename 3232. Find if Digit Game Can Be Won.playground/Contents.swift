class Solution {
    func canAliceWin(_ nums: [Int]) -> Bool {
        var sumSingle = 0
        var sumDouble = 0
        
        for num in nums {
            if num <= 9 {
                sumSingle += num
            } else {
                sumDouble += num
            }
        }
        
        if sumSingle != sumDouble {
            return true
        }
        
        return false
    }
}

let nums = [1,2,3,4,10]
print(Solution().canAliceWin(nums))
