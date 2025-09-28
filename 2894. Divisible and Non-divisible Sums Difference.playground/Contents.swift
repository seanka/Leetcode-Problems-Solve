class Solution {
    func differenceOfSums(_ n: Int, _ m: Int) -> Int {
        var divisibleSum: Int = 0
        var nonDivisibleSum: Int = 0
        
        for i in 1..<(n+1) {
            if i % m == 0 { divisibleSum += i }
            else { nonDivisibleSum += i }
        }
        
        return nonDivisibleSum - divisibleSum
    }
}

let sol = Solution()
print(sol.differenceOfSums(5, 1))
