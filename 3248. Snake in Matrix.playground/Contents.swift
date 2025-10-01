class Solution {
    func finalPositionOfSnake(_ n: Int, _ commands: [String]) -> Int {
        var matrix: [[Int]] = []
        
        // create the matrix
        for i in 0..<n {
            var innerMatrix: [Int] = []
            
            for j in 0..<n {
                innerMatrix.append(j + (n * i))
            }
            matrix.append(innerMatrix)
        }
        
        var startPosition = [0, 0]
        for command in commands {
            switch command {
            case "RIGHT":
                startPosition[1] += 1
            case "LEFT":
                startPosition[1] -= 1
            case "UP":
                startPosition[0] -= 1
            case "DOWN":
                startPosition[0] += 1
            default:
                break
            }
        }
        
        return matrix[startPosition[0]][startPosition[1]]
    }
}

let n = 3
let commands = ["DOWN", "RIGHT", "UP", "DOWN", "RIGHT"]
print(Solution().finalPositionOfSnake(n, commands))
