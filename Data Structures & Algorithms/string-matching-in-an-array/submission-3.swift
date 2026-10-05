class Solution {
    func stringMatching(_ words: [String]) -> [String] {
        var result: [String] = []
          if words.count < 2 {
            return result
        }

        var sortedWords: [String] = words.sorted { $0.count < $1.count }
        for i in 0..<(sortedWords.count - 1) {
            for j in (i + 1)..<sortedWords.count {
                if sortedWords[j].contains(sortedWords[i]) {
                    result.append(sortedWords[i])
                    break
                }
            }
        }
        return result
    }
}
