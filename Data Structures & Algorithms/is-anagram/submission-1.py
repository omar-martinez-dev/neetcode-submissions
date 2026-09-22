class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if len(s) != len(t):
            return False

        s = "".join(sorted(s))
        t = "".join(sorted(t))
        
        for schar, tchar in zip(s, t):
            if schar == tchar:
                continue
            else:
                return False
        return True
