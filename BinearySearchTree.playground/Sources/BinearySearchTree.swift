import Foundation

public class BinearySearchTree {
    
    public var value:Int
    public var parent: BinearySearchTree?
    public var left:BinearySearchTree?
    public var right: BinearySearchTree?
    
    public init(_ value: Int) {
        self.value = value
    }
    
    public func insert(_ value: Int) {
        if (value < self.value) {
            if let left = self.left {
                left.insert(value)
            }
            else {
                let leaf = BinearySearchTree(value)
                self.left = leaf
            }
        }
        else {
            if let right = self.right {
                right.insert(value)
            }
            else {
                let leaf = BinearySearchTree(value)
                self.right = leaf
            }
        }
    }
    
    public func search(_ value: Int) -> BinearySearchTree? {
        var node: BinearySearchTree? = self
        
        while let leaf = node {
            if leaf.value > value {
                node = leaf.left
            }
            else if leaf.value < value {
                node = leaf.right
            }
            else {
                return node
            }
        }
        
        return node
    }
}
