import Foundation

struct Queue<T> {
    var array = [T]()
    
    var isEmpty:Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    var top: T? {
        return array.first
    }
    
    mutating func addQueue(_ element:T) {
        array.append(element)
    }
    
    mutating func deQueue() {
        array.removeFirst()
    }
    
    func printQueue() {
        for element in array {
            print(element)
        }
    }
}

//Reverse upto k-th element
extension Queue {
    func reverseElement(upto k:Int) {
        if k > self.count { return }
        
        //store in stack
        var stack = Stack<Int>()
        for _ in 0..<k {
            if let top = queue.top {
                stack.push(element: top)
                queue.deQueue()
            }
        }
        
        //restore into queue
        while let top = stack.top {
            queue.addQueue(top)
            stack.pop()
        }

    }
}

struct Stack<T> {
    var array = [T]()
    
    var top: T? {
        return self.array.last
    }
    
    mutating func push(element:T) {
        self.array.append(element)
    }
    
    mutating func pop() {
       self.array.removeLast()
    }
    
    
    
    func printStack() {
        for element in array {
            print(element)
        }
    }
}



var queue = Queue<Int>()
queue.addQueue(5)
queue.addQueue(6)
queue.addQueue(7)
queue.addQueue(8)
queue.addQueue(9)
queue.addQueue(10)
queue.addQueue(11)
queue.addQueue(12)

queue.printQueue()

queue.reverseElement(upto: 3)

print("\n\n\n\n\n")
queue.printQueue()



