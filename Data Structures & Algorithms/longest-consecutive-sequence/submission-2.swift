class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let sortedNums = nums.sorted()
        var result = 0
        var count = 1

        if sortedNums.count < 1 {
            return sortedNums.count
        }

        for i in 0..<sortedNums.count - 1 {
            let difference = sortedNums[i + 1] - sortedNums[i]
            if difference == 1 {
                count += 1
                continue
            } else if difference == 0 {
                continue
            } else if difference > 1 || difference < 0 {
                if count > result {
                    result = count
                }
                count = 1
            }   
        }
        if count > result {
            result = count
        }
        return result
    }
}
