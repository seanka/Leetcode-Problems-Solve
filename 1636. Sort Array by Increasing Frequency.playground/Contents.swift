class Solution {
    func frequencySort(_ nums: [Int]) -> [Int] {
        var outputArray: [Int] = []
        var numsMap: [Int:Int] = [:]
        
        for num in nums {
            numsMap[num] = (numsMap[num] ?? 0) + 1
        }
        
        while !numsMap.isEmpty {
            var smallestFreqKey = 0
            var smallestFreqValue = 101
            
            let sortedMap = numsMap.sorted(by: {$0.key > $1.key})
            print(sortedMap)
            
            for (key, value) in sortedMap {
                if value < smallestFreqValue {
                    smallestFreqValue = value
                    smallestFreqKey = key
                }
            }
            
            for i in 0..<smallestFreqValue {
                outputArray.append(smallestFreqKey)
                numsMap.removeValue(forKey: smallestFreqKey)
            }
        }
        
        return outputArray
    }
}

let input = [2,3,1,3,2]
let sol = Solution()
print(sol.frequencySort(input))
