import Foundation
import Darwin

public class Surviver{
    
    private var success = false
    
    public init() {
        
    }
    
    public func openVault(with password: Int){
        let queue = DispatchQueue(label: "Survivors")
        queue.async {
            while !self.success{
                sleep(1)
                let passwordTry = Int.random(in: 0...9999)
                self.success = passwordTry == password ? true : false
            }
            
            print("Survivor found the password")
            exit(0)
        }
    }
    
}
