class Solution {
    func decodeMessage(_ key: String, _ message: String) -> String {
        let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
        
        // Construct key mapping
        var alphabetIndex = 0
        var keyMapping: [Character : Character] = [:]
        
        for char in key {
            // Check whether char already exist
            // and char is empty space
            guard keyMapping[char] == nil, char != " " else { continue }
            
            keyMapping[char] = Character(alphabet[alphabetIndex])
            alphabetIndex += 1
        }
        
        // Map message
        var result: String = ""
        
        for char in message {
            guard char != " " else {
                result += " "
                continue
            }
            
            let decode: Character = keyMapping[char] ?? " "
            result += String(decode)
        }
        
        return result
    }
}

let key = "the quick brown fox jumps over the lazy dog"
let message = "vkbs bs t suepuv"
print(Solution().decodeMessage(key, message))
