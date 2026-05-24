class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // Map each number to its index
        var indexByValue = [Int: Int]()

        // Scan the array once
        for (i, n) in nums.enumerated() {
            // The other number needed to reach target
            let complement = target - n
            // If we've seen it before, we found the pair
            if let index = indexByValue[complement] {
                return [index, i]
            }
            // Remember this number and where it was seen
            indexByValue[n] = i 
        }

        // No pair found
        return []
    }
}
