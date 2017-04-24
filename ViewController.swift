//
//  ViewController.swift
//  CalorieCounter
//
//  Created by Andre Chang on 4/23/17.
//  Copyright © 2017 Andre Chang. All rights reserved.
//
import UIKit

var age = Int()
var weight = Int()
var gender = Int()
var rec_calories = Int()
var cur_calories = Int()
var count = Int()

class ViewController: UIViewController, UITextFieldDelegate {
    
    //all the properties
    @IBOutlet weak var ageTextBox: UITextField!
    @IBOutlet weak var weightTextBox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        count = -1;
        ageTextBox.delegate = self
        weightTextBox.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hide keyboard
        textField.resignFirstResponder()
        return true
    }
 
    
    // Action stuff
  
    @IBAction func maleButton(_ sender: UIButton) {
        gender = 1
    }
    
    @IBAction func femaleButton(_ sender: UIButton) {
        gender = 0
    }
    
    @IBAction func otherButton(_ sender: UIButton) {
        gender = 2
    }
 
    
    @IBAction func beginButton(_ sender: UIButton) {
        age = Int(ageTextBox.text!)!
        weight = Int(weightTextBox.text!)!
        get_recommended(age: age, weight: weight, gender: gender)
    }
    
    private func get_recommended(age: Int, weight: Int,gender: Int) {
        switch(gender)
        {
            case 0:
                if (age >= 14) && (age <= 18) {
                    rec_calories = 2000
                } else if (age >= 19) && (age <= 30) {
                    rec_calories = 2100
                } else if (age >= 31) {
                    rec_calories = 2000
                } else if (age <= 13) {
                    rec_calories = 1600
                }
            case 1:
                if (age >= 14) && (age <= 18) {
                    rec_calories = 2600
                } else if (age >= 19) && (age <= 30) {
                    rec_calories = 2700
                } else if (age >= 31) {
                    rec_calories = 2500
                } else if (age <= 13) {
                    rec_calories = 1600
                }
            case 2:
                if (age >= 14) && (age <= 18) {
                    rec_calories = 2600
                } else if (age >= 19) && (age <= 30) {
                    rec_calories = 2700
                } else if (age >= 31) {
                    rec_calories = 2500
                } else if (age <= 13) {
                    rec_calories = 1600
                }
            default:
                return
        }
    }
}

