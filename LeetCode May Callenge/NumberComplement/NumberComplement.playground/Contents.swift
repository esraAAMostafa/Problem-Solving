import UIKit

//class Solution {
//    func findComplement(_ num: Int) -> [Int] {
//        var results = [Int]()
//        var number = num
//        while num != 0 {
//            results.append(Int(log2(Double(number))))
//            number = number - NSDecimalNumber(decimal: pow(2, results[results.count-1])).intValue
//        }
//        return results
//    }
//}
//
//Solution().findComplement(5)




//class Solution {
//    func firstUniqChar(_ s: String) -> Int {
//        let arr = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","v","w","x","y","z"]
//        for i in 0..<arr.count {
//            if (s.components(separatedBy: arr[i]).count - 1) == 1 {
//                return s.distance(from: s.startIndex, to: s.range(of: arr[i])!.lowerBound)
//            }
//        }
//        return -1
//    }
//}
//
extension String {
    subscript(i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
}
//Solution().firstUniqChar("leetcode")


// Java program to find first non-repeating character
class GFG
{
    var NO_OF_CHARS = 256
    var count = String()
    
    /* calculate count of characters
    in the passed string */
    func getCharCountArray(str: String) {
        for i in 0...str.count {
            let c = str[i]
            count[str[i]]
        }
    }
    
    /* The method returns index of first non-repeating
    character in a string. If all characters are repeating
    then returns -1 */
    static int firstNonRepeating(String str)
    {
        getCharCountArray(str);
        int index = -1, i;
    
        for (i = 0; i < str.length(); i++)
        {
            if (count[str.charAt(i)] == 1)
            {
                index = i;
                break;
            }
        }
        
    return index;
    }

    // Driver method
    public static void main (String[] args)
    {
        String str = "geeksforgeeks";
        int index = firstNonRepeating(str);
        
        System.out.println(index == -1 ? "Either all characters are repeating or string " +
                "is empty" : "First non-repeating character is " + str.charAt(index));
    }
}

