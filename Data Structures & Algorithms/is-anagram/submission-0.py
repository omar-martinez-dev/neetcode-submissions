class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if len(s) != len(t):
            return False

        sorted_textS = "".join(sorted(s))
        sorted_textT = "".join(sorted(t))
        
        for schar, tchar in zip(sorted_textS, sorted_textT):
            if schar == tchar:
                continue
            else:
                return False
        return True
