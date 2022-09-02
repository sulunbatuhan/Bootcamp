//
//  Photos.swift
//  AmazonPrimeVideo
//
//  Created by batuhan on 28.08.2022.
//

import Foundation

class Movies {
   
    
   
    
       
    var movie_id : Int
    var movie_name : String
    var movie_image : String
    var movie_year : String
    var movie_category : movieCategories
    
    init(movie_id: Int, movie_name: String, movie_image: String, movie_year: String, movie_category: movieCategories) {
        self.movie_id = movie_id
        self.movie_name = movie_name
        self.movie_image = movie_image
        self.movie_year = movie_year
        self.movie_category = movie_category
    }
    
    
}


enum movieCategories{
    case Korku
    case BilimKurgu
    case Belgesel
    case Drama
    
    
}







