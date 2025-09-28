class Solution {
    func lemonadeChange(_ bills: [Int]) -> Bool {
        var cash: [Int:Int] = [:]
        
        for bill in bills {
            // Insert money into dictionary
            cash[bill] = cash[bill] == nil ? 1 : cash[bill]! + 1
            
            if bill == 5 { continue }
            
            else if bill == 10 {
                guard cash[5] != nil, cash[5] != 0 else { return false }
                
                cash[5] = cash[5]! - 1
                continue
            }
            
            else if bill == 20 {
                // Check if have 5 bucks
                guard cash[5] != nil, cash[5] != 0 else { return false }
                
                // Check if can provide 10 bucks + 5 bucks change
                if cash[10] != nil, cash[10]! != 0 {
                    cash[10] = cash[10]! - 1
                    cash[5] = cash[5]! - 1
                    continue
                }
                
                // Check if can provide 5 bucks * 3
                if cash[5]! < 3 { return false }
                
                cash[5] = cash[5]! - 3
                continue
            }
        }
        
        return true
    }
}

let sol = Solution()
//let input = [5,5,10,10,20]
//let input = [5,5,10]
let input = [5,5,5,10,5,5,10,20,20,20]
print(sol.lemonadeChange(input))
