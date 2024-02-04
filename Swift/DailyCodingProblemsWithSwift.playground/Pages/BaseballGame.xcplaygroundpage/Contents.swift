// Baseball game  - Leetcode

// + = add prev 2 scores, guaranteed to have 2 prev scores

// D = double 2 prev scores

// C = invalidate the prev score

class Solution{
    func calPoints(_ operations: [String]) -> Int {
        var stack = [Int]();
        
        for str in operations {
            var lenOfStack = stack.count

            if str == "+" {                
                stack.append(stack[lenOfStack - 1] + stack[lenOfStack - 2])
            } else if str == "D" {
                stack.append(stack[lenOfStack - 1] * 2)
            } else if str == "C" {
                stack.remove(at: lenOfStack - 1)
            } else {
                stack.append(Int(str)!)
            }
        }
        
        return stack.reduce(0, +)
    }
}

var opsList = ["5","2","C","D","+"]
var sol = Solution()
var sum = sol.calPoints(opsList)

print("For List -> \(opsList) : Ans is -> \(sum)")
