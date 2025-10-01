class Solution {
    func minOperations(_ boxes: String) -> [Int] {
        var result: [Int] = []
        
        var input = boxes.map { Int(String($0))! }
        for i in 0..<input.count {
            var operationRequired = 0
            
            print("Checking box index \(i)")
            for j in 0..<input.count {
                print("Box content is \(input[j]) for index-j \(j) with box index \(i)")
                
                if input[j] == 1, j == i  { continue }
                else if input[j] == 0 { continue }
                
                print("Box content is \(input[j]) for index-j \(j) with box index \(i)")
                
                operationRequired += abs(j - i)
            }
            result.append(operationRequired)
            print()
        }
        
        return result
    }
}

let boxes = "001011"
print(Solution().minOperations(boxes))
