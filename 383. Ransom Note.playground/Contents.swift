class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var mag = magazine
        
        for char in ransomNote {
            if let i = mag.firstIndex(of: char) {
                mag.remove(at: i)
            } else {
                return false
            }
        }
        
        return true
    }
}

let a = "aa"
let b = "ab"
print(Solution().canConstruct(a, b))
