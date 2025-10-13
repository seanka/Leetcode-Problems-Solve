class Solution {
    func numberOfBeams(_ bank: [String]) -> Int {
        var result: Int = 0
        var camInEachRow: [Int] = []
        
        for row in bank {
            var camCounter: Int = 0
            
            for num in row {
                if num == "1" {
                    camCounter += 1
                }
            }
            
            if camCounter > 0 {
                camInEachRow.append(camCounter)
            }
        }
        
        guard camInEachRow.count > 0 else { return 0 }
        for index in 0..<camInEachRow.count - 1 {
            result += camInEachRow[index] * camInEachRow[index + 1]
        }
        
        return result
    }
}

let bank = ["000","111","000"]
print(Solution().numberOfBeams(bank))
