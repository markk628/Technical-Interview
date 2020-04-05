"""
Two Sum
https://leetcode.com/problems/two-sum/

Question: Given an array of integers, return indices of the two numbers such that they add up to a specific target.
          You may assume that each input would have exactly one solution, and you may not use the same element twice.

Restated: Return the indices of 2 values from a given array that add up the the target.

Questions
         - Is the array sorted?
         - What is the return type?

Assumptions
         - Array is not sorted
         - Return type is an array

Think Out Loud
        give each item in array a value of (target - number, index)
"""

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var compVal: [Int:Int] = [:]
    for index in nums.indices {
        let num = nums[index]
        let subVal = target - num
        if let lastIndex = compVal[subVal], lastIndex != index{
            return [lastIndex, index]
        }
        compVal[num] = index
    }
    return []
}

twoSum([2,3,5,6], 9)
