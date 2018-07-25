//
//  RestaurantViewController.swift
//  Super Spork
//
//  Created by Amanda Robinson on 7/11/18.
//  Copyright © 2018 Amanda Robinson. All rights reserved.
//

import UIKit

class RestaurantViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet weak var restaurantName: UILabel!
    @IBOutlet weak var restaurantImage: UIImageView!
    
    @IBOutlet weak var recMealCollectionView: UICollectionView!
    
    var recMealImagesArray = [UIImage(named: "recmeal1"),UIImage(named: "recmeal2"),UIImage(named: "recmeal3"),UIImage(named: "recmeal4"),UIImage(named: "recmeal5")]
    var recMealTextArray = ["Meal Set 1", "Meal Set 2", "Meal Set 3", "Meal Set 4", "Meal Set 5"]
    
    var recMealCheckboxArray = [UIImage(named: "checked box"),UIImage(named: "unchecked box"),UIImage(named: "unchecked box"),UIImage(named: "unchecked box"),UIImage(named: "unchecked box")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recMealCollectionView.delegate = self
        recMealCollectionView.dataSource = self
    }

    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recMealImagesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell:RecMealCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecMealCollectionViewCell", for: indexPath) as! RecMealCollectionViewCell
        cell.recMealImage.image = recMealImagesArray[indexPath.row]
        cell.recMealName.text = recMealTextArray[indexPath.row]
        cell.recMealCheckbox.image = recMealCheckboxArray[indexPath.row]
        
        return cell
    }

}
