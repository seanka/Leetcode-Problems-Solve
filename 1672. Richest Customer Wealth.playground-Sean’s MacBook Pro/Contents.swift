class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var maximumWealth: Int = 0
        
        for account in accounts {
            var tempWealth: Int = 0
            
            for money in account {
                tempWealth += money
            }
            
            if tempWealth > maximumWealth { maximumWealth = tempWealth }
        }
        
        return maximumWealth
    }
}

let input = [[2,8,7],[7,1,3],[1,9,5]]
let solution = Solution()
print(solution.maximumWealth(input))
