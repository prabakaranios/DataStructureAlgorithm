
import Foundation

extension Array where Element == Int {
    mutating func quickSort(low:Int,high:Int) {
        if self.count == 0 { return }
        
        if low < high { return }

        let pi = partition(low: low, high: high)
        
        quickSort(low: low, high: pi-1)
        quickSort(low: pi+1, high: high)
    }
    
    mutating func partition(low:Int,high:Int) -> Int {
        let pi = self[high]
        var i = low
        for j in low..<high {
            if self[j] <= pi {
                self.swapAt(i,j)
                i += 1
            }
        }
        self.swapAt(i,high)
        return i
    }
}

var arr = [10,8,3,1]
arr.quickSort(low: 0, high: arr.count-1)
