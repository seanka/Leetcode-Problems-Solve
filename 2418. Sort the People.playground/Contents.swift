class Solution {
    func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
        var inputMap: [String:Int] = [:]
        var outputArray: [String] = []
        
        for (index, name) in names.enumerated() {
            inputMap["\(name)-\(index)"] = heights[index]
        }
        
        let sortedMap = inputMap.sorted(by: {$0.value > $1.value})
        
        for (key, _) in sortedMap {
            var splitKey = key.split(separator: "-")
            splitKey.remove(at: 1)
            
            let name = splitKey.joined(separator: "")
            outputArray.append(name)
        }
        
        return outputArray
    }
}

let input1 = ["Alice","Bob","Bob"]
let input2 = [155,185,150]

let sol = Solution()
print(sol.sortPeople(input1, input2))
