//class Solution {
//    func maxSatisfied(_ customers: [Int], _ grumpy: [Int], _ minutes: Int) -> Int {
//        
//        //step1: search max customers within minutes
//        var maxCustomers: Int = 0
//        var startUpdateArrayFromIndex: Int = 0
//        
//        for (i, _) in customers.enumerated() {
//            if i - 1 == customers.count - minutes { break }
//            
//            var tempMax: Int = 0
//            for o in 0..<minutes {
//                tempMax = tempMax + customers[i + o]
//            }
//            
//            if tempMax > maxCustomers { 
//                maxCustomers = tempMax
//                startUpdateArrayFromIndex = i
//            }
//        }
//        
//        //step2: update grumpy array
//        var tempGrumpy : [Int] = grumpy
//        
//        for (i, _) in tempGrumpy.enumerated() {
//            if i == startUpdateArrayFromIndex {
//                for o in 0..<minutes {
//                    tempGrumpy[i+o] = 0
//                }
//            }
//        }
//        
//        //step3: count output
//        var output: Int = 0
//        
//        for (i, customer) in customers.enumerated() {
//            if tempGrumpy[i] == 0 {
//                output += customer
//            }
//        }
//        
//        return output
//    }
//}

class Solution {
    func maxSatisfied(_ customers: [Int], _ grumpy: [Int], _ minutes: Int) -> Int {
        
        var output: Int = 0
        var tempMax: Int = 0
        
        var exceptionCounter: Int = 1
        
        for (i, customer) in customers.enumerated() {
            if exceptionCounter <= minutes {
                print("CUSTOMER \(customer) --- is on exception")
                tempMax += customer
                exceptionCounter += 1
            } else {
                tempMax += (customer * grumpy[i])
            }
            
            if tempMax > output { output = tempMax }
            
        }
        
        return output
    }
}

print(Solution().maxSatisfied([1,0,1,2,1,1,7,5], [0,1,0,1,0,1,0,1], 3))
