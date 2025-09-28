func threeConsecutiveOdds(_ arr: [Int]) -> Bool {
    var consecutiveCounter = 0
    
    for number in arr {
        if number % 2 == 0 { consecutiveCounter = 0 }
        else {
            consecutiveCounter += 1
            
            if consecutiveCounter == 3 { break }
        }
    }
    
    return consecutiveCounter == 3
}

print(threeConsecutiveOdds([2,6,4,1]))
