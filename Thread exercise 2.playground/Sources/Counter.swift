import Foundation
public class Counter{
    private var storageDelegate: Countable
    
    public init(with delegate: Countable){
        storageDelegate = delegate
    }
    
    public func start(){
        let queue = DispatchQueue(label: "Counter")
        queue.async {
            for i in 0..<self.storageDelegate.counterValue{
                self.storageDelegate.addNumbers(newValue: i)
                sleep(1)
            }
            print("Counter finished!")
            exit(0)
        }
    }
}
