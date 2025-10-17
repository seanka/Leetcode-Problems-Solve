class Solution {
    func findThePrefixCommonArray(_ A: [Int], _ B: [Int]) -> [Int] {
        var result: [Int] = []
        
        var indexing = 0
        var aCompare: [Int] = []
        var bCompare: [Int] = []
        
        for _ in 0..<A.count {
            var rep = 0
            repeat {
                aCompare.append(A[rep])
                bCompare.append(B[rep])
                rep += 1
            } while rep <= indexing
            
            var sameCounter = 0
            
            for a in aCompare {
                let doesContain = bCompare.contains(where: {$0 == a})
                if doesContain {
                    sameCounter += 1
                }
            }
            
            result.append(sameCounter)
            indexing += 1
            
            aCompare = []
            bCompare = []
        }
        
        return result
    }
}

let A = [2,3,1]
let B = [3,1,2]
print(Solution().findThePrefixCommonArray(A, B))
