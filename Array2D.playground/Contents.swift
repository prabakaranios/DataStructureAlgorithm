


extension Array2D {
    func rotate90Degree() -> Array2D {
        var newMatrix = Array2D(rows: coloums, columns: rows)
        for row in 0..<self.rows {
            for column in 0..<self.coloums {
                newMatrix[row,column] = self[column,row]
            }
        }
        
        var reverseMatrix = Array2D(rows: coloums, columns: rows)
        for row in (0..<self.rows).reversed() {
            for column in 0..<self.coloums {
                reverseMatrix[rows-1-row,column] = newMatrix[row,column]
            }
        }
        return reverseMatrix
    }
}




var matrix = Array2D(rows: 3, columns: 3)

matrix[0,0] = 1
matrix[0,1] = 2
matrix[0,2] = 3
matrix[1,0] = 4
matrix[1,1] = 5
matrix[1,2] = 6
matrix[2,0] = 7
matrix[2,1] = 8
matrix[2,2] = 9

matrix.printMatrix()

//matrix.rotateArrayClockWise()
//matrix.printMatrix()

matrix.rotate90Degree().printMatrix()








