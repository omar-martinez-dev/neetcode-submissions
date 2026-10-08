class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var totalNonZProduct: Int = 1
        var zeroCounter = 0
        var results: [Int] = []
        for num in nums {
            if num != 0 {
                totalNonZProduct = totalNonZProduct * num
            } else {
                zeroCounter += 1
            }
        }

        for num in nums {
            if zeroCounter >= 2 {
                results.append(0)
                continue
            }
            if zeroCounter == 1 {
                if num == 0 {
                    results.append(totalNonZProduct)
                } else {
                    results.append(0)
                }
                continue
            }
            results.append(totalNonZProduct/num)
            
        }
        return results
    }
}
