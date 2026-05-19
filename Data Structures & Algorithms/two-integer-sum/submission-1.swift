class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var indexByValue = [Int: Int]()

        for (i, n) in nums.enumerated() {
            let complement = target - n
            if let index = indexByValue[complement] {
                return [index, i]
            }
            indexByValue[n] = i
        }

        return []
    }
}
