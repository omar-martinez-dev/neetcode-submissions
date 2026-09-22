class Solution:
    def isPalindrome(self, s: str) -> bool:
        new_s = s.lower()
        new_s = new_s.replace(" ", "")
        new_s = "".join(char for char in new_s if char.isalnum())
        left = 0
        right = len(new_s) - 1

        while left < right:
            if new_s[left] == new_s[right]:
                left += 1
                right -= 1
            else:
                return False
        return True
            