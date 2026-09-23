class Solution:
    def lengthOfLastWord(self, s: str) -> int:
        sList = s.rsplit()
        return len(sList[len(sList) - 1])