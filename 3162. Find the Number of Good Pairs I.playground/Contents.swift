class Solution {
    func numberOfPairs(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> Int {
        var goodPairCounter = 0
        
        for i in nums1 {
            for o in nums2 {
                let divisor = o * k
                
                if i < divisor { continue }
                else if i % divisor == 0 {
                    goodPairCounter += 1
                }
            }
        }
        
        return goodPairCounter
    }
}

let nums1 = [2,12]
let nums2 = [4,3]
let k = 4
print(Solution().numberOfPairs(nums1, nums2, k))
