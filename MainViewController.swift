//
//  MainViewController.swift
//  CalorieCounter
//
//  Created by Andre Chang on 4/24/17.
//  Copyright © 2017 Andre Chang. All rights reserved.
//

import UIKit

var foods = [Food]()
var addButtonFlag = 0
var one_food = Int()

class MainViewController: UIViewController, UITextFieldDelegate {

    //Properties
    @IBOutlet weak var foodTextBox: UITextField!
    @IBOutlet weak var caloriesTextBox: UITextField!
    @IBOutlet weak var total_calLabel: UILabel!
    @IBOutlet weak var rec_calLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        total_calLabel.text = String(cur_calories)
        rec_calLabel.text = String(rec_calories)
        
        // Do any additional setup after loading the view.
        foodTextBox.delegate = self
        caloriesTextBox.delegate = self
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //Actions
    @IBAction func addButton(_ sender: UIButton) {
        let x: Int? = Int(caloriesTextBox.text ?? "")
        //one_food = x!
        cur_calories += x!
        total_calLabel.text = String(cur_calories)
        guard let food = Food(name: (foodTextBox.text ?? ""), calories: x!, segments: get_seg(x: x!)) else {
            fatalError("Unable to instantiate meal1")
        }
        foods.append(food)
        addButtonFlag = 1
        
        foodTextBox.text = ""
        caloriesTextBox.text = ""
        
    }
    
    private func get_seg(x: Int) -> String {
        var total_seg = String()
        var segWorth = Double()
        var segCount = Double()
        
        segWorth = (Double(x)/Double(rec_calories))
        segCount = segWorth * 60.0;
        
        for index in 0..<Int(segCount) {
            total_seg += "|"
        }
        return total_seg
    }
}
