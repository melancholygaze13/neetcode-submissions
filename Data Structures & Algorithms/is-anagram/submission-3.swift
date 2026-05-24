class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        // Different length - not anagram
        guard s.count == t.count else { return false }

        // Track how many more times each character appears in s vs t
        var counts = [Character: Int]()

        // Walk both strings in parallel, one character at a time
        for (a, b) in zip(s, t) {
            // Count character from s
            counts[a, default: 0] += 1
            // Cancel with the same character from t
            counts[b, default: 0] -= 1
        }

        // If every count is 0, both strings use the same characters equally
        return counts.values.allSatisfy { $0 == 0 }
    }
}
