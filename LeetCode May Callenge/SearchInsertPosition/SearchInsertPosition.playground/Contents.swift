import Foundation

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            let mid = (right + left) / 2
            if nums[mid] == target {
                return mid
            } else if target < nums[mid]  {
                right = mid - 1
            } else {
                left = mid + 1
            }
            if right <= left, right >= 0, nums[right] < target {
                return right + 1
            }
        }
        return 0
    }
}

Solution().searchInsert([1,3,5,6],2)
