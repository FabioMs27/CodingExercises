import Foundation

public class BetaTest{
    
    let duration = Double(3)
    let semaphore = DispatchSemaphore(value: 10)
    
    public init(){}
    
    public func send(To userName: String){
        semaphore.wait()
        DispatchQueue.global().asyncAfter(deadline: .now() + duration) {
            self.semaphore.signal()
            print("sent to \(userName)")
        }
    }
    
}
