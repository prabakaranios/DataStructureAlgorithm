
//Recursive method

public func binearySearch(searchKey:Int,collection:[Int],range:Range<Int>) -> Int? {
    if range.lowerBound >= range.upperBound {
        return nil
    }
    else {
        let middleIndex = range.lowerBound + (range.upperBound - range.lowerBound)/2
        
        if searchKey < collection[middleIndex] {
            return binearySearch(searchKey: searchKey, collection: collection, range: range.lowerBound..<middleIndex)
        }
        else if searchKey > collection[middleIndex] {
            return binearySearch(searchKey: searchKey, collection: collection, range: middleIndex+1..<range.upperBound)
        }
        else {
            return middleIndex
        }
    }
}


public func binearySearch(key:Int,collection:[Int]) -> Int? {
    var lowerBound = 0
    var upperBound = collection.count - 1
    var middle: Int
    while lowerBound < upperBound {
        middle = lowerBound + (upperBound - lowerBound)/2
        if collection[middle] == key {
            return middle
        }
        else if collection[middle] > key {
            upperBound = middle
        }
        else if collection[middle] < key {
            lowerBound = middle+1
        }
    }
    return nil
}
 
let array = [1,2,3,4,5,6,7,8]

//let value = binearySearch(searchKey: 7, collection: array, range: 0..<array.count-1) ?? 10
let searchValue = binearySearch(key: 3, collection: array)
