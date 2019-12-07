
struct Stack<T> {
    fileprivate var array = [T]()
    
    public mutating func push(value:T) {
        array.append(value)
    }
    
    public mutating func pop() -> T? {
        return array.popLast()
    }
    
    public func topItem() -> T? {
        return array.last
    }
    
    public func firstItem() -> T? {
        return array.first
    }
}

var stackItem = Stack(array: [1,2,3,4,5])
stackItem.push(value: 6)
print(stackItem.topItem() ?? "no value in the stack")
stackItem.firstItem()
