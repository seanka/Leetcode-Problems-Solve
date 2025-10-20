class Solution {
    func recoverOrder(_ order: [Int], _ friends: [Int]) -> [Int] {
        var result: [Int] = []
        
        for (index, order) in order.enumerated() {
            let doesContain = friends.contains { $0 == order }
            
            if doesContain {
                result.append(order)
            }
        }
        
        return result
    }
}

let order = [3,1,2,5,4]
let friends = [1,3,4]
print(Solution().recoverOrder(order, friends))
