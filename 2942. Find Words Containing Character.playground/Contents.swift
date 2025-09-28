class Solution {
    func findWordsContaining(_ words: [String], _ x: Character) -> [Int] {
        var outputArray: [Int] = []
        
        for (index, word) in words.enumerated() {
            if word.contains(x) {
                outputArray.append(index)
            }
        }
        
        return outputArray
    }
}

let words = ["abc","bcd","aaaa","cbc"]
let x: Character = "z"

let sol = Solution()
print(sol.findWordsContaining(words, x))

