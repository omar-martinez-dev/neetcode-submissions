class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:
        index = 0
        t_index = 0
        
        while index < len(s):
            if t_index > len(t) - 1:
                return False
            if s[index] == t[t_index]:
                index += 1
            
            t_index += 1
        return True
            