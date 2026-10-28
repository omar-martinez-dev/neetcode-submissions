class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        result = {}
    
        for word in strs:
            sorted_word = ''.join(sorted(word))
            result.setdefault(sorted_word, []).append(word)

        return list(result.values())