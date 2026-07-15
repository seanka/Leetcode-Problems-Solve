class Solution {
    func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
        var subArrayIndex: Int {
            if ruleKey == "type" {
                return 0
            } else if ruleKey == "color" {
                return 1
            } else {
                return 2
            }
        }
        
        var itemFound = 0
        for item in items {
            if item[subArrayIndex] == ruleValue {
                itemFound += 1
            }
        }
        
        return itemFound
    }
}

let items = [["phone","blue","pixel"],["computer","silver","phone"],["phone","gold","iphone"]]
let ruleKey = "type"
let ruleValue = "phone"

print(Solution().countMatches(items, ruleKey, ruleValue))
