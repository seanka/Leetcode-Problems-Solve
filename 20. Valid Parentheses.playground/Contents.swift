class Solution {
    func isValid(_ s: String) -> Bool {
        var inputString = s
        
        while true {
            if s.contains("()") {inputString.replace("()", with: "")}
            else if s.contains("{}") {inputString.replace("{}", with: "")}
            else if s.contains("[]") {inputString.replace("[]", with: "")}
            else { return inputString.isEmpty }
        }

    }
}

let input = "{[]}"
let sol = Solution()
print(sol.isValid(input))
