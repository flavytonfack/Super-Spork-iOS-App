//
//  SearchResultsViewController.swift
//  Super Spork
//
//  Created by Amanda Robinson on 7/21/18.
//  Copyright © 2018 Amanda Robinson. All rights reserved.
//

import UIKit

class SearchResultsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

   
    @IBOutlet weak var searchResultsCollectionView: UICollectionView!
    
    var restaurantImagesArray = [UIImage(named: "food3"),UIImage(named: "searchResult1"),UIImage(named: "searchResult2"),UIImage(named: "searchResult3"),UIImage(named: "searchResult4"),UIImage(named: "searchResult5")]
    var restaurantNamesArray = ["Mirabella", "Tomato Garden", "Roma", "Meatballs", "Pasta Pasta Pasta", "Milano"]
    var restaurantCuisinesArray = ["Italian", "Italian", "Italian Fusion", "Italian", "Italian", "Italian"]
    var restaurantRatingsArray = ["Rating: 4.3/5", "Rating: 3.1/5", "Rating: 4.6/5", "Rating: 3.5/5", "Rating: 1.2/5", "Rating: 2.7/5" ]
    var restaurantDeliveryTimesArray = ["Delivery Time: 40-50 mins", "Delivery Time: 40-65 mins", "Delivery Time: 30-45 mins", "Delivery Time: 60-75 mins", "Delivery Time: 30-50 mins", "Delivery Time: 20-40 mins" ]
    var restaurantDistancesArray = ["Distance: 4 miles", "Distance: 15 miles", "Distance: 10 miles", "Distance: 7 miles", "Distance: 20 miles", "Distance: 25 miles" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        searchResultsCollectionView.dataSource = self
        searchResultsCollectionView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return restaurantImagesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:SearchResultsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "SearchResultsCollectionViewCell", for: indexPath) as! SearchResultsCollectionViewCell
        cell.restaurantImage.image = restaurantImagesArray[indexPath.row]
        cell.restaurantName.text = restaurantNamesArray[indexPath.row]
        cell.cuisine.text = restaurantCuisinesArray[indexPath.row]
        cell.rating.text = restaurantRatingsArray[indexPath.row]
        cell.delivery.text = restaurantDeliveryTimesArray[indexPath.row]
        cell.distance.text = restaurantDistancesArray[indexPath.row]
        
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
