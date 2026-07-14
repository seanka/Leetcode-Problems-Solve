class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var altitude: [Int] = [0]
        
        for index in 0..<gain.count {
            altitude.append(altitude[index] + gain[index])
        }
        
        return altitude.max() ?? -1
    }
}

let gain = [-4,-3,-2,-1,4,3,2]
print(Solution().largestAltitude(gain))
