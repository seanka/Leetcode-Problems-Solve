class Solution {
    func sumOfMultiples(_ n: Int) -> Int {
        var result = 0
        
        for digit in 0..<n+1 {
            if digit % 3 == 0 || digit % 5 == 0 || digit % 7 == 0 {
                result += digit
            }
        }
        
        return result
    }
}

let n = 10
print(Solution().sumOfMultiples(n))
