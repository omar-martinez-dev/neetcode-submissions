class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let characters = Array(s)
        var lastSeen: [Character: Int] = [:]

        var left = 0
        var longest = 0

        for right in 0..<characters.count {
            let character = characters[right]

            if let previousIndex = lastSeen[character],
               previousIndex >= left {
                left = previousIndex + 1
            }

            lastSeen[character] = right
            longest = max(longest, right - left + 1)
        }

        return longest
    }
}
