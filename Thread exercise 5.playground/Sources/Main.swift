import Foundation
/*
    Conta Bancária Compartilhada
    Exercício da Aula
    Seu objetivo é criar uma Conta Bancária compartilhada que pode ser acessada por múltiplas pessoas (threads).
    • Cada Conta pode:
        - Sacar
        - Depositar
        - Verificar Extrato
    • Cadapessoa(thread)só pode realizar uma operação por vez.
    Exemplo: Se uma Pessoa tentar sacar enquanto outra Pessoa está sacando, a Pessoa deve aguardar para, então, sacar. (Synchronized)
    • O Banco ainda tem um robô que verifica,a cada 5 segundos,o saldo da conta para verificar se nenhuma fraude está acontecendo.
*/

public class Main{
    public init (){}
    
    public static func main(){
        let banc = Banco()
        banc.depositar(userName: "Fabio", ammount: 300)
        banc.sacar(userName: "Eliete", ammount: 100)
        banc.sacar(userName: "Maria", ammount: 100)
        banc.depositar(userName: "Miguel", ammount: 300)
        banc.sacar(userName: "David", ammount: 100)
        banc.verificarExtrato(userName: "Aldi")
        banc.verificarExtrato(userName: "Fabio")
        banc.verificarExtrato(userName: "Rani")
    }
}
