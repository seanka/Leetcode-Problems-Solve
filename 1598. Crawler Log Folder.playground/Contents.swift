class Solution {
    func minOperations(_ logs: [String]) -> Int {
        var modifiedLogs: [String] = []
        
        // Loop through logs
        for (index, log) in logs.enumerated() {
             
            // MARK: Operation 1 :: Get "../" Log
            // Check log is "./", if true then do nothing
            if log == "./" {
                continue
            }
            // Check log is other than "../", if true then append to modified logs
            else if log != "../" {
                modifiedLogs.append(log)
                continue
            }
            
            // MARK: Operation 2 :: Set Logic For "../"
            //  Check if index is at main folder, if true then do nothing
            let modifiedLogsCount = modifiedLogs.count
            
            if modifiedLogsCount == 0 {
                continue
            }
            // if false, remove modifiedLogs for index - 1
            else {
                modifiedLogs.remove(at: modifiedLogsCount - 1)
            }
            
        }
        
        return modifiedLogs.count
    }
}

let solution = Solution()
print(solution.minOperations(["d1/","../","../","../"]))
