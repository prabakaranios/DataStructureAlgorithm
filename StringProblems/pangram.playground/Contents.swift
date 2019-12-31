import Foundation

extension String {
    
    func pargram() -> Bool {
        var alphabhets:Array = .init(repeating: false, count: 26)
        let a:Int {
            let a:Character = "a"
            return a.asciiValue!
        }
        
        let A:Int {
            let a:Character = "A"
            return a.asciiValue!
        }
        
        for  c:Character in self {
            if "a" <= c && c <= "z"   {
                let index = c.asciiValue!-a
                alphabhets[index] = true
            }
            
            if "A" <= c && c <= "Z"   {
                let index = c.asciiValue!-A
                alphabhets[index] = true
            }
        }
        
        for 
        
        
        return true
    }
}

let str = "abcdefghijklmnopqrstuvwxyz"
str.pargram()
