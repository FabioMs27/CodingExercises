import Foundation
//VAULT HACK
/*
    Envio de Convites para o Beta Test de um Novo Jogo — Semáforo
    •
    Faça o desafio do Beta Test (exemplificado nesta aula usando ReentrantLock) usando Semáforos e impedindo que mais do que 10 convites sejam enviados ao mesmo tempo!
*/

public class Main{
    public init (){}
    public static func main(){
        let betaTesterSender = BetaTest()
        betaTesterSender.send(To: "Fabio")
        betaTesterSender.send(To: "Aldi")
        betaTesterSender.send(To: "Rani")
        betaTesterSender.send(To: "Maria")
        betaTesterSender.send(To: "Ivanka")
        betaTesterSender.send(To: "David")
        betaTesterSender.send(To: "Eliete")
        betaTesterSender.send(To: "Lucas")
        betaTesterSender.send(To: "Mathew")
        betaTesterSender.send(To: "Jhon")
        betaTesterSender.send(To: "Mark")
        betaTesterSender.send(To: "Jose")
        betaTesterSender.send(To: "Yan")
        betaTesterSender.send(To: "Hellen")
        betaTesterSender.send(To: "Stevan")
        betaTesterSender.send(To: "Mike")
        betaTesterSender.send(To: "Miller")
        betaTesterSender.send(To: "Mila")
        betaTesterSender.send(To: "Andre")
        betaTesterSender.send(To: "Rob")
        betaTesterSender.send(To: "Moe")
        betaTesterSender.send(To: "Harry")
        betaTesterSender.send(To: "Bert")
        betaTesterSender.send(To: "Gus")
        betaTesterSender.send(To: "Paul")
    }
}
