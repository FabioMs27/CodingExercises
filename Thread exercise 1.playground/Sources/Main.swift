import Foundation
//VAULT HACK
/*
    • Três sobreviventes precisam descobrir a senha para entrar no esconderijo o quanto antes.
    • Os sobreviventes têm que ir na tentativa e erro para encontrarem a senha.
    • Zumbis estão atrás desses sobreviventes.Eles têm um temporizador quefica apitando no console a cada segundo que passa.
    Se esse temporizador chegar em 0, os zumbis chegam até os sobreviventes.
    • Vamos construir esse jogo autmatizado usando Threads!
*/

public class Main{
    public init (){
        
    }
    public static func main(){
        let password = Int.random(in: (0...9999))
        let vault = Vault(with: password)
        vault.addSurvivors(newValue: Surviver())
        vault.addSurvivors(newValue: Surviver())
        vault.addSurvivors(newValue: Surviver())
        vault.addSurvivors(newValue: Surviver())

        vault.addZombies(newValue: Zombie(speed: 60))
        vault.addZombies(newValue: Zombie(speed: 60))
        vault.addZombies(newValue: Zombie(speed: 60))
        vault.addZombies(newValue: Zombie(speed: 60))
    }
}
