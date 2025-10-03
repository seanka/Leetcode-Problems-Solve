class Solution {
//    func findIntersectionValues(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
//        var result: [Int] = [0, 0]
//        
//        for i in nums1 {
//            for j in nums2 {
//                if i == j {
//                    result[0] += 1
//                    break
//                }
//            }
//        }
//        
//        for i in nums2 {
//            for j in nums1 {
//                if i == j {
//                    result[1] += 1
//                    break
//                }
//            }
//        }
//        
//        return result
//    }
    func findIntersectionValues(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result: [Int] = [0, 0]
        
        for i in nums1 {
            for j in nums2 {
                if i == j {
                    result[0] += 1
                    break
                }
            }
        }
        
        for i in nums2 {
            for j in nums1 {
                if i == j {
                    result[1] += 1
                    break
                }
            }
        }
        
        return result
    }
}

let nums1 = [2,3,2]
let nums2 = [1,2]
print(Solution().findIntersectionValues(nums1, nums2))
