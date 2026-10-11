class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var left = 0
        var right = heights.count - 1
        var waterAmount = 0

        while left < right {
            let width = right - left
            let height = min(heights[left], heights[right])
            let amount = width * height

            if amount > waterAmount {
                waterAmount = amount
            }

            if heights[left] <= heights[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        return waterAmount
    }
}
