class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var result: [String] = []
        
        for i in 1..<input+1 {
            
            if i % 15 == 0 {
                result.append("FizzBuzz")
            } else if i % 3 == 0 {
                result.append("Fizz")
            } else if i % 5 == 0 {
                result.append("Buzz")
            } else {
                result.append(String(i))
            }
        }
        
        return result
    }
}

let input = 15
print(Solution().fizzBuzz(input))
