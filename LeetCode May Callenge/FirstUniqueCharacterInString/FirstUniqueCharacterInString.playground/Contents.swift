import Foundation

class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var dec = [Character: Int]()
        
        for c in s {
            dec[c] = (dec[c] ?? 0) + 1
        }

        var index = 0
        for c in s {
            if dec[c] == 1 {
                return index
            }
            index += 1
        }
        return -1
    }
}
