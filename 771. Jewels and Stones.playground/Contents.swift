class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var counter = 0
        
        for jewel in jewels {
            for stone in stones {
                if jewel == stone { counter += 1 }
            }
        }
        
        return counter
    }
}

let sol = Solution()
print(sol.numJewelsInStones("aA", "aAAbbbb"))
