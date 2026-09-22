class Solution:
    def replaceElements(self, arr: List[int]) -> List[int]:
        if len(arr) == 1:
            return [-1]

        largest = 0

        for index in range(0, len(arr)):
            if index == (len(arr) - 1):
                arr[index] = -1
                break
            for right in range(index + 1, len(arr)):
                if arr[right] > largest:
                    largest = arr[right]
            arr[index] = largest
            largest = 0
        return arr