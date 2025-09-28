class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var inputIndexZero = Array(strs[0])
        
        for index in 1..<strs.count {
            if inputIndexZero.count == 0 { break }
            if strs[index].count < inputIndexZero.count { inputIndexZero.removeSubrange(strs[index].count...inputIndexZero.count-1) }
            
            for (charIndex, char) in strs[index].enumerated() {
                print("COMPARING \(strs[index]) word with \(inputIndexZero) for character \(char)")
                if charIndex+1 > inputIndexZero.count { break }
                if inputIndexZero[charIndex] == char { continue }
                print("DO NOT PASS")
                print(charIndex)
                print(inputIndexZero.count)
                inputIndexZero.removeSubrange(charIndex...inputIndexZero.count-1)
                break
            }
            
            print(inputIndexZero)
        }
        
        return String(inputIndexZero)
    }
}

let input = ["aaa","aa","aaa"]
let sol = Solution()
print(sol.longestCommonPrefix(input))
