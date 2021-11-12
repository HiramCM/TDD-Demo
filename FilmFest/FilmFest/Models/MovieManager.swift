//
//  MovieManager.swift
//  FilmFest
//
//  Created by Hiram Castro Maldonado on 12/11/21.
//

import Foundation

class MovieManager {
    
    var moviesToSeeCount: Int { return moviestoSeeArray .count }
    var moviesSeenCount: Int { return moviesSeenArray.count }
    
    private var moviestoSeeArray = [Movie]()
    private var moviesSeenArray = [Movie]()
    
    func addMovie(movie:Movie) {
        if !moviestoSeeArray.contains(movie) {
            moviestoSeeArray.append(movie)
        }
    }
    
    func movieAtIndex(index: Int) -> Movie {
        return moviestoSeeArray[index]
    }
    
    func checkOffMovieAtIndex(index: Int) {
        
        guard index < moviesToSeeCount else { return }
        
        let checkedMovie = moviestoSeeArray.remove(at: index)
        moviesSeenArray.append(checkedMovie)
    }
    
    func checkedOffMovieAtIndex(index: Int) -> Movie {
        return moviesSeenArray[index]
    }
    
    func clearArrays() {
        moviestoSeeArray.removeAll()
        moviesSeenArray.removeAll()
    }
}
