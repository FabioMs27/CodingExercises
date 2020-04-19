import Foundation

public class Movie{
    
    private var name: String
    private var duration: Int
    private var pauseSeconds = 0{
        willSet{
            for i in 1...newValue {
                print("\(i) to unpause")
                sleep(1)
            }
        }
    }
    
    public var pauseValue: Int{
        set{
            if newValue > 0{
                pauseSeconds = newValue
            }
        }
        get{
            return pauseSeconds
        }
    }
    
    public init(name: String, duration: Int) {
        self.name = name
        self.duration = duration
    }
    
    public func startMovie(){
        for i in 0...duration {
            print("filme \(name) is at \(i):\(duration)")
            sleep(1)
        }
    }
    
}
