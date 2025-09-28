func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for (i, num) in nums.enumerated() {
        for o in (i+1)..<nums.count {
            let value = nums[o]
            
            if num + value == target { return [i, o]}
        }
    }
    
    return []
}

print(twoSum([3,2,3], 6))
