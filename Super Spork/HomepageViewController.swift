//
//  HomepageViewController.swift
//  Super Spork
//
//  Created by Amanda Robinson on 7/2/18.
//  Copyright © 2018 Amanda Robinson. All rights reserved.
//

import UIKit

class HomepageViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet weak var search: UITextField!
    @IBOutlet weak var address: UITextField!
    
    @IBOutlet weak var cuisineImageCollectionView: UICollectionView!
    @IBOutlet weak var restaurantImageCollectionView: UICollectionView!
    
    var cuisineImagesArray = [UIImage(named: "Italian"),UIImage(named: "Japanese"),UIImage(named: "Mexican"),UIImage(named: "American"),UIImage(named: "Thai")]
    var cuisineTextArray = ["Italian", "Japanese", "Mexican", "American", "Thai"]
    
    var restaurantImagesArray = [UIImage(named: "food4"),UIImage(named: "food1"),UIImage(named: "food2"),UIImage(named: "food5"),UIImage(named: "food3")]
    var restaurantTextArray = ["Home", "Oakland Grill", "La Jolie", "Angry Fish", "Mirabella"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        restaurantImageCollectionView.delegate = self
        restaurantImageCollectionView.dataSource = self
        
        cuisineImageCollectionView.delegate = self
        cuisineImageCollectionView.dataSource = self

    }
    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return restaurantImagesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.restaurantImageCollectionView{
            let cell:RestaurantImageCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "RestaurantImageCollectionViewCell", for: indexPath) as! RestaurantImageCollectionViewCell
            cell.restaurantImage.image = restaurantImagesArray[indexPath.row]
            cell.restaurantName.text = restaurantTextArray[indexPath.row]
        
            return cell
        }
        else{
            let cell:CuisineImageCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CuisineImageCollectionViewCell", for: indexPath) as! CuisineImageCollectionViewCell
            cell.cuisineImage.image = cuisineImagesArray[indexPath.row]
            cell.cuisineName.text = cuisineTextArray[indexPath.row]
            
            return cell
        }
        
        
    }
    
}

