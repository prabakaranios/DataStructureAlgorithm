import Foundation

public struct Array2D {
    public var rows: Int
    public var coloums: Int
    var array:[Int]
    
    public init(rows:Int, columns:Int) {
        self.rows = rows
        self.coloums = columns
        self.array = .init(repeatElement(0, count: rows*columns))
    }
    
    public subscript (row:Int,column:Int) -> Int {
        get {
            let index = rows*row + column
            return self.array[index]
        }
        set {
            let index = rows*row + column
            self.array[index] = newValue
        }
    }
    
    public func printMatrix() {
        for i in 0..<rows {
            print("\n")
            for j in 0..<coloums {
                print(self[i,j], separator: "", terminator: "\t")
            }
        }
        print("\n")
    }
}
