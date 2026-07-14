class Solution {
    func sumAndMultiply(_ n: Int) -> Int {
        var numStr = "\(n)"
        var noZeroStr: [String] = []
        
        for str in numStr {
            if str != "0" { noZeroStr.append("\(str)") }
        }
        
        let x = Int(noZeroStr.joined()) ?? 0
        let sum = noZeroStr.compactMap({ Int($0) }).reduce(0, +)
        
        return x * sum
    }
}

let n = 10203004
print(Solution().sumAndMultiply(n))
