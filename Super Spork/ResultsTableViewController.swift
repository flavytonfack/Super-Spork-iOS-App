//
//  ResultsTableViewController.swift
//  Super Spork
//
//  Created by Amanda Robinson on 7/9/18.
//  Copyright © 2018 Amanda Robinson. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController {
    var results = [Result]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadSampleResults()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return results.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "ResultsTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ResultsTableViewCell  else {
            fatalError("The dequeued cell is not an instance of ResultsTableViewCell.")
        }
        
        // Fetches the appropriate meal for the data source layout.
        let result = results[indexPath.row]
        
        cell.restaurantName.text = result.restaurantName
        cell.restaurantImage.image = result.restaurantImage
        cell.cuisineType.text = result.cuisineType
        cell.deliveryTime.text = result.deliveryTime
        
        return cell
    }
 
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 101.0
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    private func loadSampleResults() {
        let photo1 = UIImage(named: "food1")
        let photo2 = UIImage(named: "food2")
        let photo3 = UIImage(named: "food3")
        let photo4 = UIImage(named: "food4")
        let photo5 = UIImage(named: "food5")
        let photo6 = UIImage(named: "Italian")
        
//         init?(restaurantName:String, restaurantImage: UIImage?, cuisineType: String, deliveryTime: String) {
        guard let result1 = Result(restaurantName: "Mirabella", restaurantImage: photo1, cuisineType: "Italian", deliveryTime: "Delivery Time: 40-50 mins") else{
                fatalError("Unable to instantiate result1")
        }
        
        guard let result2 = Result(restaurantName: "Lotsa Pasta", restaurantImage: photo2, cuisineType: "Italian", deliveryTime: "Delivery Time: 35-45 mins") else{
            fatalError("Unable to instantiate result2")
        }
        
        guard let result3 = Result(restaurantName: "Tomato Garden", restaurantImage: photo3, cuisineType: "Italian", deliveryTime: "Delivery Time: 60-75 mins") else{
            fatalError("Unable to instantiate result3")
        }
        
        guard let result4 = Result(restaurantName: "Meatballs", restaurantImage: photo4, cuisineType: "Italian", deliveryTime: "Delivery Time: 30-45 mins") else{
            fatalError("Unable to instantiate result4")
        }
        
        guard let result5 = Result(restaurantName: "Roma", restaurantImage: photo5, cuisineType: "Italian", deliveryTime: "Delivery Time: 25-40 mins") else{
            fatalError("Unable to instantiate result5")
        }
        
        guard let result6 = Result(restaurantName: "Fusion", restaurantImage: photo6, cuisineType: "Italian Fusion", deliveryTime: "Delivery Time: 25-30 mins") else{
            fatalError("Unable to instantiate result5")
        }
        
        results += [result1, result2, result3, result4, result5, result6]
    }
}
