import UIKit

class Solution {
    func findJudge(_ N: Int, _ trust: [[Int]]) -> Int {
        var aArray = [Int]()
        var bArray = [Int]()
        trust.forEach { (arr) in
            aArray.append(arr[0])
            bArray.append(arr[1])
        }
        
        if N == 1 { return 1  }
        
        for i in 1...N {
            if aArray[i] == i {
            }
            if bArray.contains(i) && !aArray.contains(i) && (bArray.filter { $0 == i }.count == N - 1) {
                return i
            }
        }
        return -1
    }
}

Solution().findJudge(1, [])
