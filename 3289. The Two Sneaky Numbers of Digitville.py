class Solution(object):
    def getSneakyNumbers(self, nums):
        dictionary = {}
        outputList = []

        for x in nums:
            try:
                count = dictionary[x]
                if count > 0:
                    outputList.append(x)

            except:
                dictionary[x] = 1

        return outputList


sol = Solution()
sol.getSneakyNumbers([0, 3, 2, 1, 3, 2])
