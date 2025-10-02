class Solution {
    func minMovesToSeat(_ seats: [Int], _ students: [Int]) -> Int {
        var seats = seats.sorted()
        
        var result = 0
        var seatIndex = 0
        
        for student in students.sorted() {
            var addition = 0
            
            while true {
                print("SEAT \(seats[seatIndex]) ADDITION \(addition) STUDENT \(student)")
                
                let seatNumber = seats[seatIndex] + addition
                
                if seatNumber == student {
                    print("seat index + 1")
                    result += abs(addition)
                    seatIndex += 1
                    break
                } else if seatNumber < student {
                    addition += 1
                } else if seatNumber > student {
                    addition -= 1
                }
            }
            print()
        }
        
        return result
    }
}

let seats = [2,2,6,6]
let students = [1,3,2,6]
print(Solution().minMovesToSeat(seats, students))
