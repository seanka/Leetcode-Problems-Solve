class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var goodPairsFound: Int = 0
        
        for (index, num) in nums.enumerated() {
            let startIndex = nums.count - index
            
            for i in index+1..<nums.count {
                if num == nums[i] { goodPairsFound += 1}
            }
        }
        
        return goodPairsFound
    }
}

let input = [1,1,1,1]
let sol = Solution()
print(sol.numIdenticalPairs(input))
