//
//  MoviesRepository.swift
//  MovieList
//
//  Created by Ashraf on 3/25/20.
//  Copyright © 2020 com.ashraf. All rights reserved.
//

import Foundation

class MoviesRepository{
    
    var movies = [
        Movie(movieTitle: "Avanger", movieImage: "avanger", movieRating: 4.5, movieReleasYear: 2018, movieGenre: ["adventure","action","war"]),
        Movie(movieTitle: "Bat Man", movieImage: "batMan", movieRating: 4.7,       movieReleasYear: 2014 , movieGenre: ["adventure","action","war","Sci"]),
        Movie(movieTitle: "Bad Boy", movieImage: "badBoy", movieRating: 4.7,       movieReleasYear: 2008 , movieGenre: ["adventure","action","comedy"]),
        Movie(movieTitle: "Super Man", movieImage: "superMan", movieRating: 4.7,       movieReleasYear: 2002 , movieGenre: ["adventure","action","Sci"]),
        Movie(movieTitle: "God Father", movieImage: "godFather", movieRating: 4.7,       movieReleasYear: 2014 , movieGenre: ["adventure","action","war","True Story"])]

    subscript(movies index:Int)->Movie{
            return movies[index]
    }
}



