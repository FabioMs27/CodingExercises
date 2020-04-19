import Foundation

typealias Storageable = Countable & Printable

public protocol Countable {
    var counterValue:Int {get set}
    func addNumbers(newValue: Int)
}

public protocol Printable {
    var getNumbers: [Int] {get}
}


public class Storage: Storageable{
    
    private var numbers = [Int]()
    private var counter: Counter!
    private var printer: Printer!
    public var counterValue: Int
    
    public var getNumbers: [Int]{
        get{
            return numbers
        }
    }
    
    public init(countingUntil value: Int){
        counterValue = value
    }
    
    public func start(){
        counter = Counter(with: self)
        printer = Printer(with: self)
        counter.start()
        printer.start()
    }
    
    public func addNumbers(newValue: Int) {
        numbers.append(newValue)
    }
    
}

