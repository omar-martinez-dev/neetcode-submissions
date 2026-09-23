class Solution:
    def appendCharacters(self, s: str, t: str) -> int:
        tIndex = 0
        sIndex = 0

        while sIndex < len(s):
            if tIndex == len(t):
                return 0
            if s[sIndex] == t[tIndex]:
                tIndex += 1
            sIndex += 1
        return (len(t) - tIndex)
            