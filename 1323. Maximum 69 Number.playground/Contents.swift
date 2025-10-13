class Solution {
    func maximum69Number (_ num: Int) -> Int {
        let nums = String(num).compactMap { Int(String($0)) }
        let sixCount = nums.filter { $0 == 6 }.count
        
        var updatedNums: [[Int]] = []
        
        var updatedIndex = -1
        for rep in 0..<sixCount {
            for (index, digit) in nums.enumerated() {
                var update = nums
                
                if digit == 6 && updatedIndex != index {
                    update[index] = 9
                    updatedIndex = index
                    updatedNums.append(contentsOf: [update])
                    break
                }
            }
        }
        
        let arrayNums = updatedNums.map { Int($0.map { String($0) }.joined())! }
        
        var maxNumber = num
        for num in arrayNums {
            if num > maxNumber {
                maxNumber = num
            }
        }
        
        return maxNumber
    }
}

let num = 6
print(Solution().maximum69Number(num))

// 9 6 6 9

// 9 9 6 9
// 9 6 9 9

