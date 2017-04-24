//
//  FoodTableViewCell.swift
//  CalorieCounter
//
//  Created by Andre Chang on 4/24/17.
//  Copyright © 2017 Andre Chang. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell {

    //Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var segTextBox: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
