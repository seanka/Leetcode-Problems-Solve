class Solution {
    func buildArray(_ nums: [Int]) -> [Int] {
        var outputArray: [Int] = []
        
        for value in nums {
            outputArray.append(nums[value])
        }
        
        return outputArray
    }
}

let nums = [5,0,1,2,3,4]
let sol = Solution()
print(sol.buildArray(nums))
