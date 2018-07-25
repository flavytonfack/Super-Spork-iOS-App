//
//  SearchResult.swift
//  Super Spork
//
//  Created by Amanda Robinson on 7/21/18.
//  Copyright © 2018 Amanda Robinson. All rights reserved.
//

import UIKit

class SearchResult{
    var restaurantName: String
    var restaurantImage: UIImage?
    var cuisineType: String
    var rating: String
    var deliveryTime: String
    
    init?(restaurantName:String, restaurantImage: UIImage?, cuisineType: String, rating:String, deliveryTime: String) {
        self.restaurantName = restaurantName
        self.restaurantImage = restaurantImage
        self.cuisineType = cuisineType
        self.rating = rating
        self.deliveryTime = deliveryTime
        
        guard !restaurantName.isEmpty else {
            return nil
        }
        
        guard !cuisineType.isEmpty else {
            return nil
        }
        
        guard !rating.isEmpty else {
            return nil
        }
        
        guard !deliveryTime.isEmpty else {
            return nil
        }
        
    }
}

