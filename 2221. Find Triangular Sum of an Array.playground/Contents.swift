class Solution {
    func triangularSum(_ nums: [Int]) -> Int {
        var array = nums
        
        while array.count > 1 {
            var newArray: [Int] = []
            for (index, num) in array.enumerated() {
                guard index + 1 < array.count else { continue }
                
                newArray.append((num + array[index + 1]) % 10)
            }
            
            array = newArray
        }
        
        return array.first!
    }
}

let input = [5,3,5,1,7,2,6,6,4,0,4,6,4,3,1,4,0,8,2,4,3,4,9,0,5,5,0,4,6,0,6,3,4,2,2,7,3,8,1,0,5,3,1,9,0,2,2,5,8,6,2,3,2,3,5,8,5,4,1,2,0,9,3,4,4,4,1,5,1,9,2,0,8,4,3,2,4,1,9,2,4,9,2,0,1,2,3,3,8,6,0,7,3,5,7,7,9,2,5,3,2,3,4,9,3,3,5,3,4,0,7,2,1,2,5,0,5,0,6,9,7,6,5,3,2,9,8,9,4,1,8,4,8,3,7,2,2,0,1,2,3,2,2,5,8,0,1,1,3,3,3,8,4,5,6,2,6,5,7,0,4,6,6,2,2,6,7,6,1,2,7,7,6,0,4,9,9,8,1,8,3,3,5,4,5,0,9,4,0,8,6,3,7,1,8,3,4,6,6,1]
print(Solution().triangularSum(input))
