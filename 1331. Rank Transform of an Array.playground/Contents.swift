class Solution {
    func arrayRankTransform(_ arr: [Int]) -> [Int] {
        var arrangedArr = arr.sorted()
        var result: [Int] = []
        var numberPos: [Int:Int] = [:]
        
        var indexIncrement = 1
        
        for (index, num) in arrangedArr.enumerated() {
            if index > 0, num == arrangedArr[index-1] { indexIncrement -= 1; continue }
            numberPos[num] = index + indexIncrement
        }
        
        for num in arr {
            result.append(numberPos[num]!)
        }
        
        return result
    }
}

let arr = [100,100,100]
print(Solution().arrayRankTransform(arr))
