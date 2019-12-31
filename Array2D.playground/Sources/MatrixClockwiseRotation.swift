import Foundation

extension Array2D {
    public mutating func rotateArrayClockWise() {
        var row = 0
        var col = 0
        var m = rows
        var n = coloums
        
        var previous,current: Int
        
        previous = self[row+1,col]
        
        //Rotate first row
        for i in col...n-1 {
            current = self[row,i]
            self[row,i] = previous
            previous = current
        }
        row += 1
        
        //Rotate columns
        for i in row...m-1 {
            current = self[i,n-1]
            self[i,n-1] = previous
            previous = current
        }
        n -= 1
        
        //Rotate last row
        for i in (col...n-1).reversed() {
            current = self[m-1,i]
            self[m-1,i] = previous
            previous = current
        }
        m -= 1
        
        //Rotate first column
        for i in m-1...row {
            current = self[i,col]
            self[i,col] = previous
            previous = current
        }
        
        col += 1
        
    }
}
