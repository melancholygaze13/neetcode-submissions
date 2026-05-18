class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var prevMap = [Int: Int]()

        for (i, n) in nums.enumerated() {
            let need = target - n
            if let index = prevMap[need] {
                return [index, i]
            }
            prevMap[n] = i
        }

        return []
    }
}
