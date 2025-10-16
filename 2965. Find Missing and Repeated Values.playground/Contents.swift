class Solution {
    func findMissingAndRepeatedValues(_ grid: [[Int]]) -> [Int] {
        var result: [Int] = []
        var numberDictionary: [Int:Int] = [:]
        
        for i in grid {
            for o in i {
                if numberDictionary[o] != nil {
                    result.append(o)
                } else {
                    numberDictionary[o] = 1
                }
            }
        }
        
        let sorted = numberDictionary.sorted { $0.key < $1.key }
        
        var counter = 1
        for index in 0..<sorted.count {
            let key = sorted[index].key
            
            if key != counter {
                result.append(counter)
                break
            }
            else if index == sorted.count-1 {
                result.append(counter+1)
                break
            }
            else if key == counter {
                counter += 1
            }

        }
        
        return result
    }
}

let grid = [[1,3],[2,2]]
print(Solution().findMissingAndRepeatedValues(grid))
