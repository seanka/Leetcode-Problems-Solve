class Solution {
    func isValid(_ s: String) -> Bool {
        var parentheses: [Character] = []
        
        for char in s {
            if char == "(" || char == "[" || char == "{" {
                parentheses.append(char)
                continue
            }
            
            guard !parentheses.isEmpty else { return false }
            
            if char == ")", parentheses.last == "(" {
                parentheses.popLast()
            } else if char == "]", parentheses.last == "[" {
                parentheses.popLast()
            } else if char == "}", parentheses.last == "{" {
                parentheses.popLast()
            } else {
                return false
            }
        }
        
        return parentheses.isEmpty
    }
}

let input = "([])"
let sol = Solution()
print(sol.isValid(input))
