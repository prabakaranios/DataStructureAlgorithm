//
//  BST.swift
//  sampleNormalapp
//
//  Created by Prabakaran on 21/12/19.
//  Copyright © 2019 com.mrcooper.testlab. All rights reserved.
//

import Foundation

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
                left?.parent = self
            }
        }
        else {
            if let right = self.right {
                right.insert(value)
            }
            else {
                let leaf = BinearySearchTree(value)
                self.right = leaf
                right?.parent = self
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
    
    @discardableResult public func remove() -> BinearySearchTree? {
        let replacement:BinearySearchTree?
        
        if let right = self.right {
            replacement = right.minimum()
        }
        else if let left = self.left {
            replacement = left.maximum()
        }
        else {
            replacement = nil
        }
        replacement?.remove()
        
        replacement?.left = left
        replacement?.right = right
        
        left?.parent = replacement
        right?.parent = replacement
        
        parent = nil
        left = nil
        right = nil
        
        return replacement
    }
    
    public func minimum() -> BinearySearchTree? {
        var node = self
        while let left = node.left {
            node = left
        }
        return node
    }
    
    public func maximum() -> BinearySearchTree? {
        var node = self
        while let right = node.right {
            node = right
        }
        return node
    }
}

extension BinearySearchTree {
    public func inOrderTraverse() {
        self.left?.inOrderTraverse()
        print(self.value)
        self.right?.inOrderTraverse()
    }
    
    func isEmpty() -> Bool {
        if let _ = self.left,let _ = self.right {
            return true
        }
        return false
    }

    public func inOrderTraverseWithStack() {
        var current:BinearySearchTree?
        current = self
        var stack = Stack<Int>()
        while let node = current,node.isEmpty() {
            while let node = current,node.isEmpty() {
                stack.push(value: node.value)
                current = node.left
            }
            print(node.value)
            stack.pop()
            current = node.right
        }
    }
}
