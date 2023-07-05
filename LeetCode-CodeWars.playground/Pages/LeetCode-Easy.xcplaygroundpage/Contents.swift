
import Foundation

/*
 Here are all the solved problems from Leetcode easy 1/690
 */


// MARK: - Two Sum: https://leetcode.com/problems/two-sum/

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict: [Int:Int] = [:]
    for (key,value) in nums.enumerated() {
        if dict[target-value] != nil {
            return [dict[target-value, default: 0], key]
        }
        dict[value] = key
    }
    return [0,0]
}

// MARK: - Missing Number: https://leetcode.com/problems/missing-number/

func missingNumber(_ nums: [Int]) -> Int {
    let n = nums.count
    return n * (n + 1 ) / 2 - nums.reduce(0,+)
}
