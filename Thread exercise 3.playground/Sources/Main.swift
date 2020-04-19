import Foundation
/*
    Simulador de Corridas da Formula 1
    • Crie um simulador de corridas de Fórmula 1 que simule uma disputa entre dois pilotos: Hamilton e Fernando Alonso.
    • Cada carro funciona de forma independente;
    • O tempo de cada volta é dado por um valor randômico. O programa deve esperar por
    este tempo sem fazer nada para então iniciar a próxima volta;
    Ao final da corrida (quando os dois carros completarem 5 voltas), o console mostra o tempo acumulado para cada um dos pilotos e aponta o vencedor ou empate.
*/

public class Main{
    public init (){}
    
    public static func main(){
        let race = Race()
        race.startRace()
    }
}
