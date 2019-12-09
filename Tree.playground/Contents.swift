
import Foundation

let tree = TreeNode(value: "root")

let mobileApplication = TreeNode(value: "mobile")
let webApplication = TreeNode(value: "web")

let swiftLanguage = TreeNode(value: "swift")
let objectivCLanguage = TreeNode(value: "objecitveC")

let javaScript = TreeNode(value: "javascript")
let javaLanguage = TreeNode(value: "jave")

tree.addTreeNode(mobileApplication)
tree.addTreeNode(webApplication)

mobileApplication.addTreeNode(swiftLanguage)
mobileApplication.addTreeNode(objectivCLanguage)

webApplication.addTreeNode(javaScript)
webApplication.addTreeNode(javaLanguage)


public extension TreeNode {
    func searchNode(_ value:String?) -> TreeNode? {
        if value == self.value {
            return self
        }
        for child in self.children {
            if let found = searchNode(child.value) {
                return found
            }
        }
        return nil
    }
}


tree.searchNode("root")
