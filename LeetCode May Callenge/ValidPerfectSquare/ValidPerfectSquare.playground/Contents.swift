import UIKit

class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        var first = 1
        var last = num
        while first <= last {
            let mid = (first + last) / 2
            if mid * mid == num {
                return true
            } else if mid * mid > num {
                last = mid - 1
            } else {
                first = mid + 1
            }
        }
        return false
    }
}

Solution().isPerfectSquare(16)
