//
//  ResultsTableViewCell.swift
//  Super Spork
//
//  Created by Amanda Robinson on 7/8/18.
//  Copyright © 2018 Amanda Robinson. All rights reserved.
//

import UIKit

class ResultsTableViewCell: UITableViewCell {
    @IBOutlet weak var restaurantName: UILabel!
    @IBOutlet weak var cuisineType: UILabel!
    @IBOutlet weak var deliveryTime: UILabel!
    @IBOutlet weak var restaurantImage: UIImageView!
    
    
//    @IBOutlet weak var restaurantName: UILabel!
//    @IBOutlet weak var cuisineType: UILabel!
//    @IBOutlet weak var restaurantImage: UIImageView!
//    @IBOutlet weak var deliveryTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
