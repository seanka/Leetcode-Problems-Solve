class Solution {
    func defangIPaddr(_ address: String) -> String {
        var outputIP: String = ""
        
        for char in address {
            if char == "." { outputIP += "[.]" }
            else { outputIP += String(char) }
        }
        
        return outputIP
    }
}

let input = "1.1.1.1"
let sol = Solution()
print(sol.defangIPaddr(input))
