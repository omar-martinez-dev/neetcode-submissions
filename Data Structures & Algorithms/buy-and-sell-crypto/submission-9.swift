class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var profit = 0
        var buyPrice = prices[0]

        for i in 0..<prices.count {
            if prices[i] < buyPrice {
                buyPrice = prices[i]
            } else {
                profit = max(profit, (prices[i] - buyPrice))
            }
        }
        return profit
    }
}
