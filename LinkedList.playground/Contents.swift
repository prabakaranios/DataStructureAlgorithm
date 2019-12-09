//: Linked List
public class LinkedList {
    

    
    public class LinkedListNode {
//        init() {
//
//        }
        var previous: LinkedListNode?
        var next: LinkedListNode?
        var value:String?
        
        init(_ value:String) {
               self.value = value
           }
    }
    
    
    private(set) var head: LinkedListNode?
    
    public var last : LinkedListNode? {
        guard var node = head else {
            return nil
        }
        while let nextNode = node.next {
            node = nextNode
        }
        return node
    }
    
    public var count: Int {
        var count = 0
        guard var node = head else {
            return count
        }
        while let nextNode = node.next {
            node = nextNode
            count += 1
        }
        return count
    }
    
    public func node(atIndex index:Int)-> LinkedListNode {
       
        if index == 0 {
            return head!
        }
        
        var node = head?.next
        for _ in 1..< index {
            node = node?.next
            if node == nil {
                break
            }
        }
        return node
    }
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    func append(_ value:String) {
        let node = LinkedListNode(value)
        append(node)
    }
    
    public func append(_ newNode:LinkedListNode) {
        if let lastNode = last {
            lastNode.next = newNode
            newNode.previous = lastNode
        }
        else {
            head = newNode
        }
    }
    
    public func insert(atIndex index:Int) {
        
    }
    
    public func removeAll() {
        head = nil
    }


}

let node1 = LinkedList()
node1.append("root")
node1.append("swift")
node1.append("java")
node1.append("objectivec")

node1.count
node1.isEmpty

//node1.removeAll()
//node1.count



