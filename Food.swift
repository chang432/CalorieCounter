//
//  Food.swift
//  CalorieCounter
//
//  Created by Andre Chang on 4/24/17.
//  Copyright © 2017 Andre Chang. All rights reserved.
//

import UIKit

class Food {
    
    //MARK: Properties
    var name: String
    var calories: Int
    var segments: String
    
    //MARK: Initialization
    init?(name: String, calories: Int, segments: String) {
        
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // calories must be above 0
        guard (calories >= 0) else {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.calories = calories
        self.segments = segments
        
    }
}

