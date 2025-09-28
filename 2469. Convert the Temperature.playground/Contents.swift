class Solution {
    func convertTemperature(_ celsius: Double) -> [Double] {
        let limitDecimalMultiplier = 100000.0
        var outputArray: [Double] = []
        
        let kelvin = (limitDecimalMultiplier * (celsius + 273.15) / limitDecimalMultiplier)
        let fahrenheit = (limitDecimalMultiplier * (celsius * 1.8 + 32) / limitDecimalMultiplier)
        
        outputArray.append(kelvin)
        outputArray.append(fahrenheit)
        
        return outputArray
    }
}

let celsius = 122.11
let sol = Solution()
print(sol.convertTemperature(celsius))
