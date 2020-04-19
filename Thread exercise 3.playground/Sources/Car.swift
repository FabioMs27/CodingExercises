import Foundation

public typealias completionHandler = () ->Void

public class Car{
    
    private var racerName: String
    private var lapTimes = [Int]()
    
    public var getRacerName: String{
        get{
            return racerName
        }
    }
    
    public var getLaps: Int{
        return lapTimes.reduce(0, +)
    }
    
    public init(name: String){
        racerName = name
    }
    
    public func race(until finish: completionHandler){
        for i in 1...Race.laps{
            let lapTime = Int.random(in: (1...Race.usualLapTime))
            self.lapTimes.append(lapTime)
            sleep(UInt32(lapTime))
            print("\(racerName) completed lap \(i)")
        }
        finish()
    }
    
}
