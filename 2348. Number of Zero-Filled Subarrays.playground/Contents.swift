class Solution {
    func zeroFilledSubarray(_ nums: [Int]) -> Int {
        // find longest consecutive 0 array
        var longestZeroSubarrayLength = 0
        var array: [Int] = []
        
        for num in nums {
            if num == 0 {
                longestZeroSubarrayLength += 1
            } else {
                guard longestZeroSubarrayLength > 0 else { continue }
                
                array.append(longestZeroSubarrayLength)
                longestZeroSubarrayLength = 0
            }
        }
        
        let longestConsecutiveZero = array.max() ?? 0
        
        var count = 0
        // find how many subarray with consecutive zero length
        var counter = longestConsecutiveZero
        print("longestConsecutiveZero :: \(longestConsecutiveZero)")
        
        for num in nums {
            guard num == 0 else {
                counter = longestConsecutiveZero
                print("RESET COUNTER 1 :: \(counter)")
                continue
            }
            
            if counter == 1 {
                print("FOUND YOU!")
                count += 1
                counter = longestConsecutiveZero
                print("RESET COUNTER 2 :: \(counter)")
            } else {
                counter -= 1
            }
            
            print("COUNTER :: \(counter)")
        }
        
        print(count)
        
        return 0
    }
}

let input = [1,3,0,0,2,0,0,4]
print(Solution().zeroFilledSubarray(input))
