class Solution {
    func findClosest(_ x: Int, _ y: Int, _ z: Int) -> Int {
        var XtoZ = abs(x - z)
        var YtoZ = abs(y - z)
        
        if XtoZ < YtoZ {
            return 1
        } else if XtoZ > YtoZ {
            return 2
        } else {
            return 0
        }
    }
}

let x = 2
let y = 7
let z = 4
print(Solution().findClosest(x, y, z))
