import Foundation
public class Printer{
    private var storageDelegate: Printable
    
    public init(with delegate: Printable) {
        storageDelegate = delegate
    }
    
    public func start(){
        let queue = DispatchQueue(label: "Printer")
        queue.async {
            while true{
                print("numeros armazenados: \(self.storageDelegate.getNumbers)")
                sleep(3)
            }
        }
    }
}
