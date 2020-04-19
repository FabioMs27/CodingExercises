import Foundation

public class Race{
    
    public static var laps = 5
    public static var usualLapTime = 5
    private var finishedRacers = 0{
        willSet{
            if newValue == racers.count{
                results()
            }
        }
    }
    private let racers = [Car(name: "Hamilton")
                        ,Car(name: "Fernando Alonso")]
    
    public init(){}
    
    public func startRace(){
        for racer in racers {
            let queue = DispatchQueue(label: racer.getRacerName)
            queue.async {
                racer.race {
                    self.finishedRacers += 1
                }
            }
        }
        print("race started!")
    }
    
    private func results(){
        let winnerLap = racers.map{$0.getLaps}.min()
        let winner = racers.filter{$0.getLaps == winnerLap}.first
        for racer in racers {
            print("Racer:\(racer.getRacerName) did: \(racer.getLaps)")
        }
        print("winner is: \(winner?.getRacerName ?? "no contest")")
    }
}
