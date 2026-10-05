class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var indexPairs = [Int: Int]()

        for (index, value) in nums.enumerated() {
            let neededPair = target - value

            if let pairFound = indexPairs[neededPair] {
                return [pairFound, index]
            }
            indexPairs[value] = index
        }  
        return []   
    }
}
