//
//  ViewController.swift
//  CalBMI
//
//  Created by 翔風 on 2018/3/3.
//  Copyright © 2018年 RainCityBlue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var height : Double?
    var weight : Double?
    var message : String = "Please Input Your Height And Weight!"
    var bmi : Double?
    
    @IBOutlet weak var inputHeightField: UITextField!
    @IBOutlet weak var inputWeightField: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBAction func CalBmi(_ sender: UIButton){
        
        height = Double(inputHeightField.text!)
        weight = Double(inputWeightField.text!)
        
        if height == nil || weight == nil {
            messageLabel.text = message
            return
        }
        
        bmi = weight! / (height! * height!)
        
        
        if bmi! <= 18.5{
            message = "Your BMI is to light!"
        }else if bmi! > 18.5 && bmi! < 24.9{
            message = "Your BMI is health!"
        }else if bmi! > 25 && bmi! < 29.9{
            message = "Your BMI is to heavy!"
        }else{
            message = "Your BMI is fat!"
        }
        
        inputHeightField.text = "0"
        inputWeightField.text = "0"
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

