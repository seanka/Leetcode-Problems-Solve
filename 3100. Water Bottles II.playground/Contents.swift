class Solution {
    func maxBottlesDrunk(_ numBottles: Int, _ numExchange: Int) -> Int {
        var finishedBottles = numBottles
        var numExchange = numExchange
        
        var emptyBottles = finishedBottles
        print("Init Empty Bottles \(emptyBottles)")
        
        while emptyBottles >= numExchange {
            print("Empty Bottles \(emptyBottles) Num Exchange \(numExchange)")
            emptyBottles = emptyBottles - numExchange
            emptyBottles += 1
            finishedBottles += 1
            numExchange += 1
        }
        
        return finishedBottles
    }
}

let numBottles = 13
let numExchange = 6
print(Solution().maxBottlesDrunk(numBottles, numExchange))
