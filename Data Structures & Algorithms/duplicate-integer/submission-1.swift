class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        if nums.count < 2 {
            return false
        }
        var sortedNums = nums.sorted(by: <)
        for i in 1..<sortedNums.count {
            if sortedNums[i] == sortedNums[i - 1] {
                return true
            }
        }
        return false
    }
}
