import Foundation

public class Player{
    
    private var movies = [Movie]()
    
    private var currMovie: Movie?
    
    private let queue = DispatchQueue(label: "Movies")
    
    public init(){}
    
    public func addMovieToThePlayer(movie: Movie){
        movies.append(movie)
        queue.sync {
            currMovie = movie
            movie.startMovie()
        }
    }
    
    public func pauseMovie(for seconds: Int){
        if let movie = currMovie{
            print("Movie paused!")
            movie.pauseValue = seconds
        }else{
            print("There isnt any movie playing!")
        }
    }
    
}
