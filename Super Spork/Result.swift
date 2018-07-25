//
//  Meal.swift
//  Super Spork
//
//  Created by Amanda Robinson on 7/9/18.
//  Copyright © 2018 Amanda Robinson. All rights reserved.
//

import UIKit

class Result{
    var restaurantName: String
    var restaurantImage: UIImage?
    var cuisineType: String
    var deliveryTime: String
    
    init?(restaurantName:String, restaurantImage: UIImage?, cuisineType: String, deliveryTime: String) {
        self.restaurantName = restaurantName
        self.restaurantImage = restaurantImage
        self.cuisineType = cuisineType
        self.deliveryTime = deliveryTime
        
        guard !restaurantName.isEmpty else {
            return nil
        }
        
        guard !cuisineType.isEmpty else {
            return nil
        }
        
        guard !deliveryTime.isEmpty else {
            return nil
        }
        
    }
}
