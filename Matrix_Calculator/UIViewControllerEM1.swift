//
//  UIViewControllerEM1.swift
//  Matrix_Calculator
//
//  Created by Dalton Russell Cole on 4/28/15.
//  Copyright (c) 2015 ABBD. All rights reserved.
//

import UIKit

class UIViewControllerEM1: UIViewController, UIPickerViewDelegate {
    
    var matricies = ["A", "B", "C", "D", "E", "F", "G", "H"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return 8 //matricies.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!
    {
        var str = "Hello"
        return str //matricies[1]
    }

}
