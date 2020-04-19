import Foundation
public class Vault{
    //atributes
    private var zombies = [Zombie]()
    private var survivers = [Surviver]()
    private var password: Int
    
    //Constructor
    public init(with password:Int) {
        self.password = password
    }
    //methods
    public func addZombies(newValue:Zombie){
        zombies.append(newValue)
        newValue.hunt()
    }
    public func addSurvivors(newValue:Surviver){
        survivers.append(newValue)
        newValue.openVault(with: password)
    }
}
