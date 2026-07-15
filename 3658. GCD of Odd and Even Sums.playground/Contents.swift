class Solution {
    func gcdOfOddEvenSums(_ n: Int) -> Int {
        var sumOdd = 0
        var sumEven = 0
        
        var o = 1
        
        while o < n*2+1 {
            if o % 2 == 0 {
                sumEven += o
            } else {
                sumOdd += o
            }
            
            o += 1
        }
        
        
        let gcd = max(sumEven, sumOdd) % min(sumEven, sumOdd)
        
        // GCD
        return gcd == 0 ? 1 : gcd
    }
}

let n = 4
print(Solution().gcdOfOddEvenSums(n))
