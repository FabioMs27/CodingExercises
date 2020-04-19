import Foundation
//VAULT HACK
/*
    Player de Filmes
    • Você implementará um sistema que possibilita:
    - Começar um filme(incrementa ao contador da duração do filme)
    Pausar um filme (ele pede para o filme esperar por um determinado tempo)
    - Listar a contagem atual do filme(qual segundo ele se encontra no momento)
    • O programa não deve permitir que dois filmes estejam executando ao mesmo tempo. Se pedir, o programa deve dar Play somente quando o atual filme finalizar.
    • Use a palavra-chave Synchronized para impedir que duas threads executem o mesmo filme ao mesmo tempo.
*/

public class Main{
    public init (){}
    
    public static func main(){
        let player = Player()
        player.addMovieToThePlayer(movie: Movie(name: "Harry Potter 1", duration: 5))
        player.addMovieToThePlayer(movie: Movie(name: "Harry Potter 2", duration: 5))
        player.addMovieToThePlayer(movie: Movie(name: "Harry Potter 3", duration: 5))
        player.pauseMovie(for: 5)
        player.addMovieToThePlayer(movie: Movie(name: "Harry Potter 4", duration: 5))
        player.addMovieToThePlayer(movie: Movie(name: "Harry Potter 5", duration: 5))
        player.addMovieToThePlayer(movie: Movie(name: "Harry Potter 6", duration: 5))

    }
}
