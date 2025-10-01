class Solution {
    func numWaterBottles(_ numBottles: Int, _ numExchange: Int) -> Int {
        var emptyResult = numBottles
        
        let firstExchange = numBottles / numExchange
        emptyResult += firstExchange
        print("first exchange : \(firstExchange)")
        
        var emptyBottles = numBottles % numExchange + firstExchange
        print("empty bottles : \(emptyBottles)")
        
        while emptyBottles / numExchange > 0 {
            let exchanged = emptyBottles / numExchange
            emptyBottles = emptyBottles % numExchange + exchanged
            
            emptyResult += exchanged
            print("exchanged: \(exchanged)")
            print("empty bottles 2: \(emptyBottles)")
        }
        
        return emptyResult
    }
    
    func numWaterBottles(_ numBottles: Int, _ numExchange: Int) -> Int {
        var emptyResult = numBottles
        
        var numBottles = numBottles
        var index = 0
        while true {
            guard numBottles / numExchange > 0 else { break }
            
            var exchanged = numBottles / numExchange
            emptyResult += exchanged
            numBottles = exchanged + (numBottles % numExchange)
            
            print("iteration \(index), exchanged \(exchanged), numBottles \(numBottles)")
            index += 1
        }
        
        return emptyResult
    }
}

let input1 = 25
let input2 = 4
print(Solution().numWaterBottles(input1, input2))

// 6, remainder 1
// empty bottles: 7
// 1, remainder 3
// empty bottles: 4
// 1
