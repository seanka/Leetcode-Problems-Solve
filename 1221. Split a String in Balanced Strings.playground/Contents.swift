class Solution {
    func balancedStringSplit(_ s: String) -> Int {
        var result: Int = 0
        var dictionary: [Character:Int] = [:]
        
        for char in s {
            dictionary[char] = (dictionary[char] ?? 0) + 1
            
            if dictionary["R"] == dictionary["L"] {
                dictionary = [:]
                result += 1
            }
        }
        
        return result
    }
}

let s = "RLRRRLLRLL"
print(Solution().balancedStringSplit(s))
