class Solution {
    func romanToInt(_ s: String) -> Int {
        var value = 0
        var backwards = String(s.reversed())
        
        var current = backwards.first
        
        while current != nil {
            var dropValue = 0
            var next = backwards.dropFirst().first
            
            switch current! {
            case "I":
                value += 1
                dropValue = 1
            case "V":
                if next == "I" {
                    // Real :: IV
                    value += 4
                    dropValue = 2
                } else {
                    value += 5
                    dropValue = 1
                }
            case "X":
                if next == "I" {
                    // Real :: IX
                    value += 9
                    dropValue = 2
                } else {
                    value += 10
                    dropValue = 1
                }
            case "L":
                if next == "X" {
                    // Real :: XL
                    value += 40
                    dropValue = 2
                } else {
                    value += 50
                    dropValue = 1
                }
            case "C":
                if next == "X" {
                    // Real :: XC
                    value += 90
                    dropValue = 2
                } else {
                    value += 100
                    dropValue = 1
                }
            case "D":
                if next == "C" {
                    // Real :: DC
                    value += 400
                    dropValue = 2
                } else {
                    value += 500
                    dropValue = 1
                }
            case "M":
                if next == "C" {
                    // Real :: MC
                    value += 900
                    dropValue = 2
                } else {
                    value += 1000
                    dropValue = 1
                }
            default:
                value
            }
            
            backwards = String(backwards.dropFirst(dropValue))
            current = backwards.first
            
//            if current == "I" {
//                if next == "V" {
//                    // Real :: VI
//                    value += 6
//                    backwards = String(backwards.dropFirst(2))
//                    current = backwards.first
//                } else {
//                    value += 1
//                    backwards = String(backwards.dropFirst())
//                    current = backwards.first
//                }
//            } else if current == "V" {
//                if next == "I" {
//                    // Real :: IV
//                    value += 4
//                    backwards = String(backwards.dropFirst(2))
//                    current = backwards.first
//                } else {
//                    value += 5
//                    backwards = String(backwards.dropFirst())
//                    current = backwards.first
//                }
//            } else if current == "X" {
//                if next == "I" {
//                    // Real :: IX
//                    value += 9
//                    backwards = String(backwards.dropFirst(2))
//                    current = backwards.first
//                } else {
//                    value += 10
//                    backwards = String(backwards.dropFirst())
//                    current = backwards.first
//                }
//            } else if current == "L" {
//                if next == "X" {
//                    // Real :: XL
//                    value += 40
//                    backwards = String(backwards.dropFirst(2))
//                    current = backwards.first
//                } else {
//                    value += 50
//                    backwards = String(backwards.dropFirst())
//                    current = backwards.first
//                }
//            } else if current == "C" {
//                if next == "X" {
//                    // Real :: XC
//                    value += 90
//                    backwards = String(backwards.dropFirst(2))
//                    current = backwards.first
//                } else {
//                    value += 100
//                    backwards = String(backwards.dropFirst())
//                    current = backwards.first
//                }
//            } else if current == "D" {
//                if next == "C" {
//                    // Real :: DC
//                    value += 400
//                    backwards = String(backwards.dropFirst(2))
//                    current = backwards.first
//                } else {
//                    value += 500
//                    backwards = String(backwards.dropFirst())
//                    current = backwards.first
//                }
//            } else if current == "M" {
//                if next == "C" {
//                    // Real :: MC
//                    value += 900
//                    backwards = String(backwards.dropFirst(2))
//                    current = backwards.first
//                } else {
//                    value += 1000
//                    backwards = String(backwards.dropFirst())
//                    current = backwards.first
//                }
//            }
        }

        return value
    }
}

let input = "MCMXCIV"
let sol = Solution()
print(sol.romanToInt(input))
