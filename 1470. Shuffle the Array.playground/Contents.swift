class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var outputArray: [Int] = []
        
        for index in 0..<n {
            outputArray.append(nums[index])
            outputArray.append(nums[index + n])
        }
        
        return outputArray
    }
}

let nums = [1,2,3,4,4,3,2,1]
let n = 4

let sol = Solution()
print(sol.shuffle(nums, n))
