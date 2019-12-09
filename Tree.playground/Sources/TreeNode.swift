import Foundation

public class TreeNode {
    public var value: String?
    
    public weak var parant:TreeNode?
    public var children = [TreeNode]()
    public init(value:String) {
        self.value = value
    }
    
    public func addTreeNode(_ newNode:TreeNode) {
        newNode.parant = self
        children.append(newNode)
    }
}

//public extension TreeNode {
//    func searchNode(_ value:String?) -> TreeNode? {
//        if value == self.value {
//            return self
//        }
//        for child in self.children {
//            if let found = searchNode(child.value) {
//                return found
//            }
//        }
//        return nil
//    }
//}
