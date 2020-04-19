import Foundation

public class Banco{
    
    //Atributes
    private var saldo = 0.0
    private var currUserSacar: String?
    private var currUserDepositar: String?
    private var currUserVerificar: String?

    
    //Threads
    private let sacarQueue = DispatchQueue(label: "Sacar")
    private let depositarQueue = DispatchQueue(label: "Depositar")
    private let varificarQueue = DispatchQueue(label: "Verificar")

    
    public init(){
        DispatchQueue.global().async {
            while true{
                print("Saldo: \(self.saldo)")
                sleep(5)
            }
        }
    }
    
    public func sacar(userName: String, ammount: Double){
        if let curr = currUserSacar{
            print("wait until \(curr) finishes this operation")
        }
        sacarQueue.async {
            print("user \(userName) is going to withdraw: \(ammount)")
            self.currUserSacar = userName
            self.saldo -= ammount
            self.perform(Action: "Withdrawing", with: userName)
            self.currUserSacar = nil
        }
    }
    
    public func depositar(userName: String, ammount: Double){
        if let curr = currUserDepositar{
            print("wait until \(curr) finishes this operation")
        }
        depositarQueue.async {
            print("user \(userName) is going to deposit: \(ammount)")
            self.currUserDepositar = userName
            self.saldo += ammount
            self.perform(Action: "Depositing", with: userName)
            self.currUserDepositar = nil
        }
    }
    
    public func verificarExtrato(userName: String){
        if let curr = currUserVerificar{
            print("wait until \(curr) finishes this operation")
        }
        varificarQueue.async {
            print("user \(userName) is going verify")
            self.currUserVerificar = userName
            self.perform(Action: "Verifying", with: userName)
            self.currUserVerificar = nil
        }
    }
    
    private func perform(Action name: String, with userName: String){
        for i in 1...3{
            print("\(userName) is \(name)  \(i):3")
            sleep(1)
        }
        print("\(userName) finished \(name)")
    }
}
