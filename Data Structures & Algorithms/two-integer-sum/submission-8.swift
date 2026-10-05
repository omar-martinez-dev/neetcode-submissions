class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var indexPairs = [Int: Int]()
        var result: [Int] = []

        for (index, value) in nums.enumerated() {
            let neededPair = target - value

            if let pairFound = indexPairs[neededPair] {
                result += [pairFound, index]
                break
            }
            indexPairs[value] = index
        }  
        return result   
    }
}
