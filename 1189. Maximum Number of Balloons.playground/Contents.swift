class Solution {
    func maxNumberOfBalloons(_ text: String) -> Int {
        var ballonDict = ["b": 0, "a": 0, "l": 0, "n": 0, "o": 0]
        
        for char in text {
            if char == "b" || char == "a" || char == "n" || char == "l" || char == "o" {
                ballonDict["\(char)"] = (ballonDict["\(char)"] ?? 0) + 1
            }
        }
        
        var nonLCount = min(ballonDict["b"] ?? 0, ballonDict["a"] ?? 0, ballonDict["n"] ?? 0)
        
        let lCount = ballonDict["l"] ?? 0
        let oCount = ballonDict["o"] ?? 0
        
        while nonLCount * 2 > lCount || nonLCount * 2 > oCount {
            nonLCount -= 1
        }
        
        return nonLCount
    }
}

let text = "nlaebolko"
print(Solution().maxNumberOfBalloons(text))
