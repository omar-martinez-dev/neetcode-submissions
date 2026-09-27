class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var result: [Int] = []
        var count: [Int: Int] = [:]


        for num in nums {
            count[num, default: 0] += 1
        }

        for _ in 0..<k {
            guard let greatest = count.max(by: { a, b in a.value < b.value}) else { return [] }
            result.append(greatest.key)
            count[greatest.key] = nil
        }
        return result
    }
}
