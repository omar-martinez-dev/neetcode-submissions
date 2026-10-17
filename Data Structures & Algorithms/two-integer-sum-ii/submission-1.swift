class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        for current in numbers.indices {
            let find = target - numbers[current]
            var left = current + 1
            var right = numbers.count - 1

            while left <= right {
                let mid = left + (right - left) / 2

                if numbers[mid] == find {
                    return [current + 1, mid + 1]
                } else if numbers[mid] < find {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            }
        }

        return []
    }
}

