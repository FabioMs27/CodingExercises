import Foundation
import Darwin


public class Zombie{
    //Atributes
    private var speed: Int
    
    //Constructor
    public init(speed: Int) {
        self.speed = speed
    }
    
    //Methods
    public func hunt(){
        let queue = DispatchQueue(label: "Zombie")
        queue.async {
            for i in 0..<self.speed{
                print("zombie attack in: \(self.speed - i)")
                sleep(1)
            }
            print("zombie killed survivors")
            exit(0)
        }
    }
}
