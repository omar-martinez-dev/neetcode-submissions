class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var left = 0
        var right = heights.count - 1
        var waterAmount = 0

        while left < right {
            let amount = (right - left) * min(heights[left], heights[right])

            waterAmount = max(waterAmount, amount)

            if heights[left] <= heights[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        return waterAmount
    }
}
