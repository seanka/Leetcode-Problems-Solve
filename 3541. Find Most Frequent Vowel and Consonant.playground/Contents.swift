class Solution {
    func maxFreqSum(_ s: String) -> Int {
        var vowels: [Character:Int] = [:]
        var consonant: [Character:Int] = [:]
        
        for char in s {
            if char == "a" || char == "i" || char == "u" || char == "e" || char == "o" {
                vowels[char] = (vowels[char] ?? 0) + 1
            } else {
                consonant[char] = (consonant[char] ?? 0) + 1
            }
        }
        
        var maxVowels: Int = 0
        var maxConsonant: Int = 0
        
        vowels.forEach { (_, value) in
            if value > maxVowels {
                maxVowels = value
            }
        }
        
        consonant.forEach { (_, value) in
            if value > maxConsonant {
                maxConsonant = value
            }
        }
        
        return maxVowels + maxConsonant
    }
}

let s = "aeiaeia"
print(Solution().maxFreqSum(s))
