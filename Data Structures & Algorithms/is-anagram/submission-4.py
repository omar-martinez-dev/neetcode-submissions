class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        first_string = self.charCounter(s=s)
        second_string = self.charCounter(s=t)

        return first_string == second_string


    def charCounter(self, s: str) -> Dict:
        result = {}

        for char in s:
            result[char] = result.get(char, 0) + 1
        

        return result

        