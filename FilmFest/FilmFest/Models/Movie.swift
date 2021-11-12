//
//  Movie.swift
//  FilmFest
//
//  Created by Hiram Castro Maldonado on 12/11/21.
//

import Foundation

struct Movie {
    let title: String
    let releaseDate: String?
    
    init (title:String, releaseDate:String? = nil) {
        self.title = title
        self.releaseDate = releaseDate
    }
    
}

extension Movie: Equatable {
    static func==(lhs: Movie, rhs: Movie) -> Bool {
        if lhs.title != rhs.title {
            return false
        }
        
        if lhs.releaseDate != rhs.releaseDate {
            return false
        }
        
        return true
    }
}
