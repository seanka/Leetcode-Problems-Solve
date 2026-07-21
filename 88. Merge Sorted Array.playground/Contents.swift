class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        let numCopy = nums1
        
        nums1.removeAll()
        
        for i in 0..<m {
            nums1.append(numCopy[i])
        }
        
        for i in 0..<n {
            nums1.append(nums2[i])
        }
        
        nums1 = nums1.sorted()
    }
}

var nums1 = [1,2,3,0,0,0]
//var nums1 = [1]
var m = 3
//var m = 1
var nums2 = [2,5,6]
var n = 3

Solution().merge(&nums1, m, nums2, n)
print(nums1)
