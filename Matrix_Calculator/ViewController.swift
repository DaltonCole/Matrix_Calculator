//
//  ViewController.swift
//  Matrix_Calculator
//
//  Created by Dalton Russell Cole on 4/10/15.
//  Copyright (c) 2015 ABBD. All rights reserved.
//

import UIKit


var mat: Matrix = Matrix()
var matricies = ["A", "B", "C", "D", "E", "F", "G", "H"]
var pick: String = "A"
var menu: String = "enter"


class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UICollectionViewDelegate, UITextFieldDelegate{
    
    @IBOutlet weak var Display00: UITextField!
    @IBOutlet weak var Display01: UITextField!
    @IBOutlet weak var Display02: UITextField!
    @IBOutlet weak var Display03: UITextField!
    @IBOutlet weak var Display04: UITextField!
    @IBOutlet weak var Display05: UITextField!
    @IBOutlet weak var Display06: UITextField!
    @IBOutlet weak var Display10: UITextField!
    @IBOutlet weak var Display11: UITextField!
    @IBOutlet weak var Display12: UITextField!
    @IBOutlet weak var Display13: UITextField!
    @IBOutlet weak var Display14: UITextField!
    @IBOutlet weak var Display15: UITextField!
    @IBOutlet weak var Display16: UITextField!
    @IBOutlet weak var Display20: UITextField!
    @IBOutlet weak var Display21: UITextField!
    @IBOutlet weak var Display22: UITextField!
    @IBOutlet weak var Display23: UITextField!
    @IBOutlet weak var Display24: UITextField!
    @IBOutlet weak var Display25: UITextField!
    @IBOutlet weak var Display26: UITextField!
    @IBOutlet weak var Display30: UITextField!
    @IBOutlet weak var Display31: UITextField!
    @IBOutlet weak var Display32: UITextField!
    @IBOutlet weak var Display33: UITextField!
    @IBOutlet weak var Display34: UITextField!
    @IBOutlet weak var Display35: UITextField!
    @IBOutlet weak var Display36: UITextField!
    @IBOutlet weak var Display40: UITextField!
    @IBOutlet weak var Display41: UITextField!
    @IBOutlet weak var Display42: UITextField!
    @IBOutlet weak var Display43: UITextField!
    @IBOutlet weak var Display44: UITextField!
    @IBOutlet weak var Display45: UITextField!
    @IBOutlet weak var Display46: UITextField!
    @IBOutlet weak var Display50: UITextField!
    @IBOutlet weak var Display51: UITextField!
    @IBOutlet weak var Display52: UITextField!
    @IBOutlet weak var Display53: UITextField!
    @IBOutlet weak var Display54: UITextField!
    @IBOutlet weak var Display55: UITextField!
    @IBOutlet weak var Display56: UITextField!
    @IBOutlet weak var Display60: UITextField!
    @IBOutlet weak var Display61: UITextField!
    @IBOutlet weak var Display62: UITextField!
    @IBOutlet weak var Display63: UITextField!
    @IBOutlet weak var Display64: UITextField!
    @IBOutlet weak var Display65: UITextField!
    @IBOutlet weak var Display66: UITextField!
    
    
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
        return matricies.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!
    {
        return matricies[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        var matrix_selected = matricies[row]
        pick = matricies[row]
    }
    
    //Menu picker
    @IBAction func menu_enter(sender: AnyObject)
    {
        menu = "enter"
    }
    @IBAction func menu_add(sender: AnyObject)
    {
        menu = "add"
    }
    @IBAction func menu_sub(sender: AnyObject)
    {
        menu = "sub"
    }
    @IBAction func menu_transpose(sender: AnyObject)
    {
        menu = "transpose"
    }
    @IBAction func menu_det(sender: AnyObject)
    {
        menu = "det"
    }
    @IBAction func menu_inverse(sender: AnyObject)
    {
        menu = "inverse"
    }
    @IBAction func menu_display(sender: AnyObject)
    {
        menu = "display"
    }
    
    


    
    
    //Done button on Enter Matrix Pressed
    @IBAction func DoneButtonPressed(sender: AnyObject)
    {
        var m: [[Float]] = mat.DISPLAY(pick)
        m[0][0] = (Display00.text as NSString).floatValue
        m[0][1] = (Display01.text as NSString).floatValue
        m[0][2] = (Display02.text as NSString).floatValue
        m[0][3] = (Display03.text as NSString).floatValue
        m[0][4] = (Display04.text as NSString).floatValue
        m[0][5] = (Display05.text as NSString).floatValue
        m[0][6] = (Display06.text as NSString).floatValue
        m[1][0] = (Display10.text as NSString).floatValue
        m[1][1] = (Display11.text as NSString).floatValue
        m[1][2] = (Display12.text as NSString).floatValue
        m[1][3] = (Display13.text as NSString).floatValue
        m[1][4] = (Display14.text as NSString).floatValue
        m[1][5] = (Display15.text as NSString).floatValue
        m[1][6] = (Display16.text as NSString).floatValue
        m[2][0] = (Display20.text as NSString).floatValue
        m[2][1] = (Display21.text as NSString).floatValue
        m[2][2] = (Display22.text as NSString).floatValue
        m[2][3] = (Display23.text as NSString).floatValue
        m[2][4] = (Display24.text as NSString).floatValue
        m[2][5] = (Display25.text as NSString).floatValue
        m[2][6] = (Display26.text as NSString).floatValue
        m[3][0] = (Display30.text as NSString).floatValue
        m[3][1] = (Display31.text as NSString).floatValue
        m[3][2] = (Display32.text as NSString).floatValue
        m[3][3] = (Display33.text as NSString).floatValue
        m[3][4] = (Display34.text as NSString).floatValue
        m[3][5] = (Display35.text as NSString).floatValue
        m[3][6] = (Display36.text as NSString).floatValue
        m[4][0] = (Display40.text as NSString).floatValue
        m[4][1] = (Display41.text as NSString).floatValue
        m[4][2] = (Display42.text as NSString).floatValue
        m[4][3] = (Display43.text as NSString).floatValue
        m[4][4] = (Display44.text as NSString).floatValue
        m[4][5] = (Display45.text as NSString).floatValue
        m[4][6] = (Display46.text as NSString).floatValue
        m[5][0] = (Display50.text as NSString).floatValue
        m[5][1] = (Display51.text as NSString).floatValue
        m[5][2] = (Display52.text as NSString).floatValue
        m[5][3] = (Display53.text as NSString).floatValue
        m[5][4] = (Display54.text as NSString).floatValue
        m[5][5] = (Display55.text as NSString).floatValue
        m[5][6] = (Display56.text as NSString).floatValue
        m[6][0] = (Display60.text as NSString).floatValue
        m[6][1] = (Display61.text as NSString).floatValue
        m[6][2] = (Display62.text as NSString).floatValue
        m[6][3] = (Display63.text as NSString).floatValue
        m[6][4] = (Display64.text as NSString).floatValue
        m[6][5] = (Display65.text as NSString).floatValue
        m[6][6] = (Display66.text as NSString).floatValue
        mat.SAVE(pick, matrix_one: m)
    
    }
    
    @IBAction func NextButtonPressed(sender: AnyObject)
    {
        var m: [[Float]] = mat.DISPLAY(pick)
        Display00.text = String(format: "%.2f", m[0][0])
        Display01.text = String(format: "%.2f", m[0][1])
        Display02.text = String(format: "%.2f", m[0][2])
        Display03.text = String(format: "%.2f", m[0][3])
        Display04.text = String(format: "%.2f", m[0][4])
        Display05.text = String(format: "%.2f", m[0][5])
        Display06.text = String(format: "%.2f", m[0][6])
        Display10.text = String(format: "%.2f", m[1][0])
        Display11.text = String(format: "%.2f", m[1][1])
        Display12.text = String(format: "%.2f", m[1][2])
        Display13.text = String(format: "%.2f", m[1][3])
        Display14.text = String(format: "%.2f", m[1][4])
        Display15.text = String(format: "%.2f", m[1][5])
        Display16.text = String(format: "%.2f", m[1][6])
        Display20.text = String(format: "%.2f", m[2][0])
        Display21.text = String(format: "%.2f", m[2][1])
        Display22.text = String(format: "%.2f", m[2][2])
        Display23.text = String(format: "%.2f", m[2][3])
        Display24.text = String(format: "%.2f", m[2][4])
        Display25.text = String(format: "%.2f", m[2][5])
        Display26.text = String(format: "%.2f", m[2][6])
        Display30.text = String(format: "%.2f", m[3][0])
        Display31.text = String(format: "%.2f", m[3][1])
        Display32.text = String(format: "%.2f", m[3][2])
        Display33.text = String(format: "%.2f", m[3][3])
        Display34.text = String(format: "%.2f", m[3][4])
        Display35.text = String(format: "%.2f", m[3][5])
        Display36.text = String(format: "%.2f", m[3][6])
        Display40.text = String(format: "%.2f", m[4][0])
        Display41.text = String(format: "%.2f", m[4][1])
        Display42.text = String(format: "%.2f", m[4][2])
        Display43.text = String(format: "%.2f", m[4][3])
        Display44.text = String(format: "%.2f", m[4][4])
        Display45.text = String(format: "%.2f", m[4][5])
        Display46.text = String(format: "%.2f", m[4][6])
        Display50.text = String(format: "%.2f", m[5][0])
        Display51.text = String(format: "%.2f", m[5][1])
        Display52.text = String(format: "%.2f", m[5][2])
        Display53.text = String(format: "%.2f", m[5][3])
        Display54.text = String(format: "%.2f", m[5][4])
        Display55.text = String(format: "%.2f", m[5][5])
        Display56.text = String(format: "%.2f", m[5][6])
        Display60.text = String(format: "%.2f", m[6][0])
        Display61.text = String(format: "%.2f", m[6][1])
        Display62.text = String(format: "%.2f", m[6][2])
        Display63.text = String(format: "%.2f", m[6][3])
        Display64.text = String(format: "%.2f", m[6][4])
        Display65.text = String(format: "%.2f", m[6][5])
        Display66.text = String(format: "%.2f", m[6][6])
        
    }

    
    @IBOutlet weak var Done1: UIButton!
}
