class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var setNums: Set<Int> = []
        
        for num in nums {
            setNums.insert(num)
        }
        
        nums = []
        
        for setNum in setNums.sorted() {
            nums.append(setNum)
        }
        
        return nums.count
    }
}

var nums = [1,1,2]
print(Solution().removeDuplicates(&nums))
