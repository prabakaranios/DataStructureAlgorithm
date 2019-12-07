import Foundation

public func linearSearch<T: Equatable>(_ searchKey:T, _ collection:[T]) -> Int? {
    for (index,value) in collection.enumerated() where value == searchKey {
        return index
    }
    return  nil
}
