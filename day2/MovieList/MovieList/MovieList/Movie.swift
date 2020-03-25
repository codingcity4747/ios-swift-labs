//
//  Movie.swift
//  MovieList
//
//  Created by Ashraf on 3/25/20.
//  Copyright © 2020 com.ashraf. All rights reserved.
//

import Foundation

struct Movie{
    var title : String
    var image : String
    var rating : Float
    var releaseYear : Int
    var genre : [String]
    
    init(movieTitle title:String,
         movieImage image:String,
         movieRating rate:Float,
         movieReleasYear release:Int,
         movieGenre genre:[String]
    ){
        self.title = title
        self.image = image
        self.rating = rate
        self.releaseYear = release
        self.genre = genre 
    }
}
