
class ParkingSystem {
    var big = 0
    var medium = 0
    var small = 0
    
    init(_ big: Int, _ medium: Int, _ small: Int) {
        self.big = big
        self.medium = medium
        self.small = small
    }
    
    func addCar(_ carType: Int) -> Bool {
        if carType == 1, big >= 1 {
            big -= 1
            return true
        } else if carType == 2, medium >= 1 {
            medium -= 1
            return true
        } else if carType == 3, small >= 1 {
            small -= 1
            return true
        }
            
        return false
    }
}

let input1 = ["ParkingSystem","addCar","addCar","addCar","addCar"]
let input2 = [[1,1,0],[1],[2],[3],[1]]

let obj = ParkingSystem(input2[0][0], input2[0][1], input2[0][2])

for i in 0..<input1.count {
    guard i > 0 else { continue }
    
    let valid = obj.addCar(input2[i][0])
    print(valid)
}
