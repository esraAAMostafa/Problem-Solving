import Foundation

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        let dec = numberOcceranceInList(nums)
        print(dec)
        for key in dec.keys {
            if dec[key]! > nums.count/2 {
                return key
            }
        }
        return 0
    }
    
    private func numberOcceranceInList(_ list: [Int]) -> [Int:Int] {
        var dec = [Int:Int]()
        var count = [0]

        for i in 0..<list.count {
            if count[list[i]] == 1 {
               list[i]
            } else {
               count[arr[i]] = count[arr[i]] + 1
            }
        }
        return dec
    }
    
//    private func numberOcceranceInList(_ list: [Int]) -> [Int:Int] {
//        var dec = [Int:Int]()
//        for num in list {
//            if list.contains(num) {
//                dec[num] = (dec[num] ?? 0) + 1
//            }
//        }
//        return dec
//    }
}

let x = Solution().majorityElement([6,6,6,7,7])
print(x)
