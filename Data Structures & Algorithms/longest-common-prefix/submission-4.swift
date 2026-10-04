class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 1 {
             return strs[0]
        }
        var longestPrefix: String = strs[0]
        var newList = strs.sorted {$0.count > $1.count}

        for num in 1..<newList.count {
            if longestPrefix == "" {
                return ""
            }
            if newList[num].hasPrefix(longestPrefix) {
                continue
            } else {
                longestPrefix = checkPrefix(str: newList[num], prefix: longestPrefix)
            }
        }
        return longestPrefix
    }

    func checkPrefix(str: String, prefix: String) -> String {
        if str == "" {
            return ""
        }

        var prefix: String = prefix
        for _ in 0..<prefix.count {
            if str.hasPrefix(prefix) {
                return prefix
            } else {
                prefix = String(prefix.dropLast(1))
            }
        }
        return prefix
    }
}
