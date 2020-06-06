import UIKit

/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var first = 1
        var last = n
        var firstBad = 1
        while last >= first {
            let mid = Int(Double((last + first)/2).rounded())
            if isBadVersion(mid) {
                firstBad = mid
                last = mid - 1
            } else {
                first = mid + 1
            }
        }
        return firstBad
    }
}

class VersionControl {
    func isBadVersion(_ version: Int) -> Bool {
        let numerYouWantToCheck = 0 //example
        return version == numerYouWantToCheck
    }
}
