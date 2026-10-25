class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        var charCount: [Character: Int] = [:]
        var intervalSeen: [Character: Int] = [:]
        for char in s1 { charCount[char, default: 0] += 1 } 

        guard s1.count <= s2.count else {
            return false
        }

        for i in 0...(s2.count - s1.count) {
            let start = s2.index(s2.startIndex, offsetBy: i)
            let end = s2.index(s2.startIndex, offsetBy: i + s1.count)

            for char in s2[start..<end] { intervalSeen[char, default: 0] += 1}

            if charCount == intervalSeen {
                return true
            } else {
                intervalSeen = [:]
            }
        }
        return false  
    }
}
