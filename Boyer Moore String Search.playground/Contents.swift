
import Foundation

extension String {
    
    func index(_ pattern:String) -> Index? {
        if pattern.count <= 0 || pattern.count >= self.count { return nil}
        
        var skipTable = [Character:Int]()
        
        for (i,c) in pattern.enumerated() {
            skipTable[c] = pattern.count - 1 - i
        }
        
        let lastCharactorInPattern =  pattern.last
        
        var i = pattern.index(self.startIndex, offsetBy: pattern.count-1)
        
        func backTrace() -> Index {
              var p = pattern.index(before: pattern.endIndex)
              var j = i
              
            while p > pattern.startIndex  {
                  p = pattern.index(before: p)
                  j = self.index(before: j)
                  
                  if pattern[p] != self[j] { return j }
              }
              
              return j
          }
        
        
        while i < self.endIndex  {
            let c = self[i]
            if c == lastCharactorInPattern {
                i = backTrace()
            }
            else {
                i = self.index(i, offsetBy: skipTable[c]! , limitedBy: self.endIndex) ?? self.endIndex
            }
        }
        
  
        
        return nil
    }
}


let str = "hello world"
str.index("world")


