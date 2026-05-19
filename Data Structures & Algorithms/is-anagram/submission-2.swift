class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }

        var counts = [Character: Int]()

        for (a, b) in zip(s, t) {
            counts[a, default: 0] += 1
            counts[b, default: 0] -= 1
        }

        return counts.values.allSatisfy { $0 == 0 }
    }
}
