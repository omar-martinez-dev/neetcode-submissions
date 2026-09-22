class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        if len(nums) == 2:
            return [0, 1]

        memo = {}

        for index in range(len(nums)):
            temp = target - nums[index]

            if temp in memo:
                return [memo[temp], index]
            else:
                memo[nums[index]] = index
               
        