class Solution {
    func sortTheStudents(_ score: [[Int]], _ k: Int) -> [[Int]] {
        var result = score
        
        for _ in 0..<result.count {
            for i in 0..<result.count-1 {
                let temp = result[i+1]
                
                if result[i][k] < temp[k] {
                    result[i+1] = result[i]
                    result[i] = temp
                }
            }
        }
            
        return result
    }
}

let score = [[0,0,24329],[1,1,86773],[2,2,30042],[3,3,63807],[4,4,97853],[5,5,90239],[6,6,61438],[7,7,86167],[8,8,52974],[9,9,35017]]
let k = 2
print(Solution().sortTheStudents(score, k))
