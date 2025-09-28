class Solution {
    func largestLocal(_ grid: [[Int]]) -> [[Int]] {
        var tempArray: [Int] = []
        
        for i in 0..<3 {
            for o in 0..<3 {
                tempArray.append(grid[i][o])
            }
        }
        
        print(tempArray)
        
        return [[0]]
    }
}

let input = [[9,9,8,1],[5,6,2,6],[8,2,6,4],[6,2,2,2]]
let solution = Solution()
print(solution.largestLocal(input))
