class Solution {
    func countSeniors(_ details: [String]) -> Int {
        var count = 0
        for item in details {
            let start = item.index(item.startIndex, offsetBy: 11)
            let end = item.index(item.startIndex, offsetBy: 13)

            guard let age = Int(item[start..<end]) else {
                print("invalid number")
                return -1
            }

            if age > 60 {
                count += 1
            }
        }
        return count
    }
}
