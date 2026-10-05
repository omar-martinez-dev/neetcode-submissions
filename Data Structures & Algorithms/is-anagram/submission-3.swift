class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        let sortedS = s.sorted()
        let sortedT = t.sorted()

        for i in 0..<sortedS.count {
            if sortedS[i] != sortedT[i] {
                return false
            }
        }
        return true
    }
}
