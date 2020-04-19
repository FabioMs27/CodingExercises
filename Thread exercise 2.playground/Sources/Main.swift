import Foundation
/*
    O armazém de Inteiros
    Implemente três classes: Storage, Counter e Printer.
    A classe Storage deve conter uma coleção que armazene somente Integers.
    • A classe Counter deve ser uma Thread que começa contando de 0 (0,1,2,3,4...)a
    cada segundo e armazena cada valor na classe Storage.
    A classe Printer deve criar uma thread que lê todos os números armazenados em
    Storage a cada 3 segundos e printa na tela a coleção inteira.
    • Escreva um programa em que Storage contenha Counter e Printer e faça-o rodar na Main.
 */
 
public class Main{
    public init (){}
    
    public static func main(){
        let storage = Storage(countingUntil: 10)
        storage.start()
    }
}
