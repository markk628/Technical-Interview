"""
Palindrome Number
https://leetcode.com/problems/palindrome-number/

Question: Determine whether an integer is a palindrome. An integer is a palindrome when it reads the same backward as forward.

Restated: See if the given integer is a the same when reversed.

Questions
         - What is the return type?
         - What about negative numbers?

Assumptions
         - Can't input a double
         - Return type is a bool

Think Out Loud
         - Single digit numbers will always return true
         - Negative numbers will always return false
"""

import UIKit

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else { return false }
        guard x > 10 else { return true }
        let x = String(x)
        let reversedX = String(x.reversed())
        return reversedX == x
    }
}


let solution = Solution()
solution.isPalindrome(98132)
