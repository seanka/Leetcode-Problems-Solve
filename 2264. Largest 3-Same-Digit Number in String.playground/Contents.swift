class Solution {
    func largestGoodInteger(_ num: String) -> String {
        var numArray: [Character] = []
        var dictionary: [Character:Int] = [:]
        
        for char in num {
            numArray.append(char)
        }
        
        for (index, char) in numArray.enumerated() {
            guard index + 1 < numArray.count else { break }
            
            if char == numArray[index + 1] {
                dictionary[char, default: 0] += 1
            } else {
                guard dictionary[char] ?? 0 <= 1 else { continue }
                
                dictionary[char] = 0
            }
        }
        
        dictionary = dictionary.filter { $0.value >= 2 }
        
        guard dictionary != [:] else { return "" }
        
        let largest = dictionary.keys.max()!
        return String(repeating: largest, count: 3)
    }
}

let answer = Solution().largestGoodInteger("42352338")
print(answer)
