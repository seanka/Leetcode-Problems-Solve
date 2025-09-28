class Solution {
    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
        var count = 0
        
        for word in words {
            var charSet: Set<Character> = []
            
            for char in word {
                charSet.insert(char)
            }
            
            var charIsValid: Bool = false
            
            for char in charSet {
                if allowed.contains(where: {$0 == char}) {
                    charIsValid = true
                    continue
                } else {
                    charIsValid = false
                    break
                }
            }
            
            if charIsValid {
                count += 1
            }
        }
        
        return count
    }
}

let answer = Solution().countConsistentStrings("cad", ["cc","acd","b","ba","bac","bad","ac","d"])
print(answer)
