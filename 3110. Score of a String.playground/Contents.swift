class Solution {
    func scoreOfString(_ s: String) -> Int {
        var charAsciiValues: [Int] = []
        
        // MARK: OPERATION 1 :: Insert char ascii value into an array
        for char in s {
            charAsciiValues.append(getAsciiValue(char))
        }
        
        // MARK: OPERATION 2 :: Get string score
        var stringScore = 0
        
        for (index, value) in charAsciiValues.enumerated() {
            if index + 1 == charAsciiValues.count { break }
            
            stringScore += abs(value - charAsciiValues[index+1])
        }
        
        return stringScore
    }
    
    private func getAsciiValue(_ c: Character) -> Int {
        return Int(c.unicodeScalars.first?.value ?? 0)
    }
}

let sol = Solution()
print(sol.scoreOfString("zaz"))
