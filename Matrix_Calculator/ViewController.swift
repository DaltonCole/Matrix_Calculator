//
//  ViewController.swift
//  Matrix_Calculator
//
//  Created by Dalton Russell Cole on 4/10/15.
//  Copyright (c) 2015 ABBD. All rights reserved.
//

import UIKit
import iAd

//Creates eight two dementional arrays and keeps track of row and column size (starting at 1)
var mat: Matrix = Matrix()
//Names for each 2-D array in matrix class
var matricies = ["A", "B", "C", "D", "E", "F", "G", "H"]
//Max 2-D array size in matrix class
var max_size: Int = 7
//Represents which matrix the picker choose
var pick: String = "A"
//Represents which matrix to be displayed, choosen from text boxes
var displayed_matrix: String = "B"
//Tells weather to use pick or displayed_matrix variable to display matrix
var pickORfield: Bool = false //false if pick, true if text field
//Tells weather or not matricies are capatable in their operations
var correctSize: Bool = false
//Represents determinate value to be displayed
var det: Float = 0.0
//If values are out of range of acceptable values or matricies are not capatable with operations, display error message as a Label
var errorMessage: String = ""


class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UICollectionViewDelegate, UITextFieldDelegate, ADBannerViewDelegate{
    
    //For Add Banner
    @IBOutlet weak var adBannerView: ADBannerView!
    
    //For Display matrix screen. Display a possible 49 text boxes to enter matrix
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
    
    //For matrix operations
    @IBOutlet weak var mat1: UITextField!
    @IBOutlet weak var mat2: UITextField!
    @IBOutlet weak var matEqual: UITextField!
    @IBOutlet weak var detEqual: UITextField!
    
    //Row and Column Size
    @IBOutlet weak var rowSize: UITextField!
    @IBOutlet weak var colSize: UITextField!
    
    
    
    //Label to tell user that the matricies are uncapatable
    @IBOutlet weak var uncapatable_matrix: UILabel!
    @IBOutlet weak var bad_Det: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //For Ad banner
        self.canDisplayBannerAds = true
        self.adBannerView?.delegate = self
        self.adBannerView?.hidden = true
    }
    
    //The following five functions are for the Ad banners
    func bannerViewWillLoadAd(banner: ADBannerView!)
    {
        
    }
    
    func bannerViewDidLoadAd(banner: ADBannerView!)
    {
        self.adBannerView?.hidden = false
    }
    
    func bannerViewActionDidFinish(banner: ADBannerView!) {
        
    }
    
    func bannerViewActionShouldBegin(banner: ADBannerView!, willLeaveApplication willLeave: Bool) -> Bool {
        return true
    }
    
    func bannerView(banner: ADBannerView!, didFailToRecieveAdWithError error: NSError!)
    {
        
    }
    //end of Ad Banner functions
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Part of: Picker View
    //Purpose: Returns the number of 'columns' to display in picker.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    //Part of: Picker View
    //Purpose: Returns the number of rows in each component (ie number of elements in matricies array)
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return matricies.count
    }
    
    //Part of: Picker View
    //Purpose: Populates picker view with strings from matricies array (B-H)
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!
    {
        return matricies[row]
    }
    
    //Part of: Picker View
    //Purpose: Returns the matrix string picked by user in picker view
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        var matrix_selected = matricies[row]
        pick = matricies[row]
        pickORfield = false
    }
    
    //Pre: Done Button is pressed (on view matrix screen)
    //Post: The corresponding matrix, called displayed_matrix or pick, is saved to the matrix class
    @IBAction func DoneButtonPressed(sender: AnyObject)
    {
        var m: [[Float]]
        
        //Is matrix to be saved from picker or from text field?
        if(pickORfield == false)
        {
            m = mat.DISPLAY(pick)
        }
        else
        {
            println("\(displayed_matrix)")
            m = mat.DISPLAY(displayed_matrix)
        }
        //Populate 2-D array with elements from corresponding matrix text fields
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
        
        //Save matrix m using either pick or displayed_matrix variables as corresponding matrix
        if(pickORfield == false)
        {
            mat.SAVE(pick, matrix_one: m)
        }
        else
        {
            mat.SAVE(displayed_matrix, matrix_one: m)
        }
    }
    
    //Pre: Display button is pressed
    //Post: Populates text boxes to corresponding matrix and hiddes the other text boxes. If incapatable matrix, then a warning is shown
    @IBAction func NextButtonPressed(sender: AnyObject)
    {
        //If capatable matricies were entered, display matrix, if not, give warning
        if(correctSize == true)
        {
            var m: [[Float]]
            var rowsize: Int
            var colsize: Int
            
            //Is the matrix to be populated using picker or text field value?
            if(pickORfield == false)
            {
                m = mat.DISPLAY(pick)
                rowsize = mat.rowCount(pick)
                colsize = mat.colCount(pick)
            }
            else
            {
                m = mat.DISPLAY(displayed_matrix)
                rowsize = mat.rowCount(displayed_matrix)
                colsize = mat.colCount(displayed_matrix)
            }
            
            //Make text fields invisible
            Display00.hidden = true
            Display01.hidden = true
            Display02.hidden = true
            Display03.hidden = true
            Display04.hidden = true
            Display05.hidden = true
            Display06.hidden = true
            Display10.hidden = true
            Display11.hidden = true
            Display12.hidden = true
            Display13.hidden = true
            Display14.hidden = true
            Display15.hidden = true
            Display16.hidden = true
            Display20.hidden = true
            Display21.hidden = true
            Display22.hidden = true
            Display23.hidden = true
            Display24.hidden = true
            Display25.hidden = true
            Display26.hidden = true
            Display30.hidden = true
            Display31.hidden = true
            Display32.hidden = true
            Display33.hidden = true
            Display34.hidden = true
            Display35.hidden = true
            Display36.hidden = true
            Display40.hidden = true
            Display41.hidden = true
            Display42.hidden = true
            Display43.hidden = true
            Display44.hidden = true
            Display45.hidden = true
            Display46.hidden = true
            Display50.hidden = true
            Display51.hidden = true
            Display52.hidden = true
            Display53.hidden = true
            Display54.hidden = true
            Display55.hidden = true
            Display56.hidden = true
            Display60.hidden = true
            Display61.hidden = true
            Display62.hidden = true
            Display63.hidden = true
            Display64.hidden = true
            Display65.hidden = true
            Display66.hidden = true
            
            //Populates each text field corresponding to their 2-D array value and makes visible if populated
            if((0 < rowsize) && (0 < colsize))
            {
                Display00.hidden = false
                Display00.text = String(format: "%.2f", m[0][0])
            }
            if((0 < rowsize) && (1 < colsize))
            {
                Display01.hidden = false
                Display01.text = String(format: "%.2f", m[0][1])
            }
            if((0 < rowsize) && (2 < colsize))
            {
                Display02.hidden = false
                Display02.text = String(format: "%.2f", m[0][2])
            }
            if((0 < rowsize) && (3 < colsize))
            {
                Display03.hidden = false
                Display03.text = String(format: "%.2f", m[0][3])
            }
            if((0 < rowsize) && (4 < colsize))
            {
                Display04.hidden = false
                Display04.text = String(format: "%.2f", m[0][4])
            }
            if((0 < rowsize) && (5 < colsize))
            {
                Display05.hidden = false
                Display05.text = String(format: "%.2f", m[0][5])
            }
            if((0 < rowsize) && (6 < colsize))
            {
                Display06.hidden = false
                Display06.text = String(format: "%.2f", m[0][6])
            }
            if((1 < rowsize) && (0 < colsize))
            {
                Display10.hidden = false
                Display10.text = String(format: "%.2f", m[1][0])
            }
            if((1 < rowsize) && (1 < colsize))
            {
                Display11.hidden = false
                Display11.text = String(format: "%.2f", m[1][1])
            }
            if((1 < rowsize) && (2 < colsize))
            {
                Display12.hidden = false
                Display12.text = String(format: "%.2f", m[1][2])
            }
            if((1 < rowsize) && (3 < colsize))
            {
                Display13.hidden = false
                Display13.text = String(format: "%.2f", m[1][3])
            }
            if((1 < rowsize) && (4 < colsize))
            {
                Display14.hidden = false
                Display14.text = String(format: "%.2f", m[1][4])
            }
            if((1 < rowsize) && (5 < colsize))
            {
                Display15.hidden = false
                Display15.text = String(format: "%.2f", m[1][5])
            }
            if((1 < rowsize) && (6 < colsize))
            {
                Display16.hidden = false
                Display16.text = String(format: "%.2f", m[1][6])
            }
            if((2 < rowsize) && (0 < colsize))
            {
                Display20.hidden = false
                Display20.text = String(format: "%.2f", m[2][0])
            }
            if((2 < rowsize) && (1 < colsize))
            {
                Display21.hidden = false
                Display21.text = String(format: "%.2f", m[2][1])
            }
            if((2 < rowsize) && (2 < colsize))
            {
                Display22.hidden = false
                Display22.text = String(format: "%.2f", m[2][2])
            }
            if((2 < rowsize) && (3 < colsize))
            {
                Display23.hidden = false
                Display23.text = String(format: "%.2f", m[2][3])
            }
            if((2 < rowsize) && (4 < colsize))
            {
                Display24.hidden = false
                Display24.text = String(format: "%.2f", m[2][4])
            }
            if((2 < rowsize) && (5 < colsize))
            {
                Display25.hidden = false
                Display25.text = String(format: "%.2f", m[2][5])
            }
            if((2 < rowsize) && (6 < colsize))
            {
                Display26.hidden = false
                Display26.text = String(format: "%.2f", m[2][6])
            }
            if((3 < rowsize) && (0 < colsize))
            {
                Display30.hidden = false
                Display30.text = String(format: "%.2f", m[3][0])
            }
            if((3 < rowsize) && (1 < colsize))
            {
                Display31.hidden = false
                Display31.text = String(format: "%.2f", m[3][1])
            }
            if((3 < rowsize) && (2 < colsize))
            {
                Display32.hidden = false
                Display32.text = String(format: "%.2f", m[3][2])
            }
            if((3 < rowsize) && (3 < colsize))
            {
                Display33.hidden = false
                Display33.text = String(format: "%.2f", m[3][3])
            }
            if((3 < rowsize) && (4 < colsize))
            {
                Display34.hidden = false
                Display34.text = String(format: "%.2f", m[3][4])
            }
            if((3 < rowsize) && (5 < colsize))
            {
                Display35.hidden = false
                Display35.text = String(format: "%.2f", m[3][5])
            }
            if((3 < rowsize) && (6 < colsize))
            {
                Display36.hidden = false
                Display36.text = String(format: "%.2f", m[3][6])
            }
            if((4 < rowsize) && (0 < colsize))
            {
                Display40.hidden = false
                Display40.text = String(format: "%.2f", m[4][0])
            }
            if((4 < rowsize) && (1 < colsize))
            {
                Display41.hidden = false
                Display41.text = String(format: "%.2f", m[4][1])
            }
            if((4 < rowsize) && (2 < colsize))
            {
                Display42.hidden = false
                Display42.text = String(format: "%.2f", m[4][2])
            }
            if((4 < rowsize) && (3 < colsize))
            {
                Display43.hidden = false
                Display43.text = String(format: "%.2f", m[4][3])
            }
            if((4 < rowsize) && (4 < colsize))
            {
                Display44.hidden = false
                Display44.text = String(format: "%.2f", m[4][4])
            }
            if((4 < rowsize) && (5 < colsize))
            {
                Display45.hidden = false
                Display45.text = String(format: "%.2f", m[4][5])
            }
            if((4 < rowsize) && (6 < colsize))
            {
                Display46.hidden = false
                Display46.text = String(format: "%.2f", m[4][6])
            }
            if((5 < rowsize) && (0 < colsize))
            {
                Display50.hidden = false
                Display50.text = String(format: "%.2f", m[5][0])
            }
            if((5 < rowsize) && (1 < colsize))
            {
                Display51.hidden = false
                Display51.text = String(format: "%.2f", m[5][1])
            }
            if((5 < rowsize) && (2 < colsize))
            {
                Display52.hidden = false
                Display52.text = String(format: "%.2f", m[5][2])
            }
            if((5 < rowsize) && (3 < colsize))
            {
                Display53.hidden = false
                Display53.text = String(format: "%.2f", m[5][3])
            }
            if((5 < rowsize) && (4 < colsize))
            {
                Display54.hidden = false
                Display54.text = String(format: "%.2f", m[5][4])
            }
            if((5 < rowsize) && (5 < colsize))
            {
                Display55.hidden = false
                Display55.text = String(format: "%.2f", m[5][5])
            }
            if((5 < rowsize) && (6 < colsize))
            {
                Display56.hidden = false
                Display56.text = String(format: "%.2f", m[5][6])
            }
            if((6 < rowsize) && (0 < colsize))
            {
                Display60.hidden = false
                Display60.text = String(format: "%.2f", m[6][0])
            }
            if((6 < rowsize) && (1 < colsize))
            {
                Display61.hidden = false
                Display61.text = String(format: "%.2f", m[6][1])
            }
            if((6 < rowsize) && (2 < colsize))
            {
                Display62.hidden = false
                Display62.text = String(format: "%.2f", m[6][2])
            }
            if((6 < rowsize) && (3 < colsize))
            {
                Display63.hidden = false
                Display63.text = String(format: "%.2f", m[6][3])
            }
            if((6 < rowsize) && (4 < colsize))
            {
                Display64.hidden = false
                Display64.text = String(format: "%.2f", m[6][4])
            }
            if((6 < rowsize) && (5 < colsize))
            {
                Display65.hidden = false
                Display65.text = String(format: "%.2f", m[6][5])
            }
            if((6 < rowsize) && (6 < colsize))
            {
                Display66.hidden = false
                Display66.text = String(format: "%.2f", m[6][6])
            }
            uncapatable_matrix.text = "Capatable Matricies"
        }
        else
        {
            uncapatable_matrix.text = errorMessage
        }
        
    }
    
    
    //Purpose: Sets row and column sizes for the selected matrix in enter matrix screen
    @IBAction func SetRowAndCol(sender: AnyObject)
    {
        if(((rowSize.text).toInt() >= 1) && ((colSize.text).toInt() >= 1) && ((rowSize.text).toInt() <= max_size) && ((colSize.text).toInt() <= max_size))
        {
            var rowS: Int = (rowSize.text).toInt()!
            var colS: Int = (colSize.text).toInt()!
            mat.setRowAndColSize(rowS, colSize: colS, matrix_num: pick)
            correctSize = true
        }
        else
        {
            correctSize = false
            errorMessage = "Matrix size must be between 1 and 7"
        }
    }
    
    //Purpose: Sets global variable displayed_matrix to corresponding matrix, sets pickORfield to true to because only a text field operation should call this function
    func set_display(display:String)
    {
        if(display == "A" || display == "a")
        {
            displayed_matrix = "A"
        }
        else if(display == "B" || display == "b")
        {
            displayed_matrix = "B"
        }
        else if(display == "C" || display == "c")
        {
            displayed_matrix = "C"
        }
        else if(display == "D" || display == "d")
        {
            displayed_matrix = "D"
        }
        else if(display == "E" || display == "e")
        {
            displayed_matrix = "E"
        }
        else if(display == "F" || display == "f")
        {
            displayed_matrix = "F"
        }
        else if(display == "G" || display == "g")
        {
            displayed_matrix = "G"
        }
        else if(display == "H" || display == "h")
        {
            displayed_matrix = "H"
        }
        pickORfield = true
    }

    //Pre: Next button is pressed on addition page
    //Post: Adds two matricies. If capatable matricies, new matrix (matEqual) is saved to corresponding matrix in mat. If uncapatable, warning will update
    @IBAction func button_add(sender: AnyObject)
    {
        //1. Checks to see if all three letter inputs are between A-H
        //2. Check to see if both matricies are of the same size
        //3. If not, mark correct size as false to indicate incapatable matricies and update error message
        if(check_letter_input(mat1.text) || check_letter_input(mat2.text) || check_letter_input(matEqual.text))
        {
            
        }
        else if((mat.rowCount(mat1.text) == mat.rowCount(mat2.text)) && (mat.colCount(mat1.text) == mat.colCount(mat2.text)))
        {
            //Set 2D array varables to the corresponding ones in matrix class and Add
            var matrix_one: [[Float]] = mat.DISPLAY(mat1.text)
            var matrix_two: [[Float]] = mat.DISPLAY(mat2.text)
            var matrix_equal: [[Float]] = mat.ADD(matrix_one, matrix_two: matrix_two)
            //Save to the corresponding matrix in matrix class
            mat.SAVE(matEqual.text, matrix_one: matrix_equal)
            //Update display for next screen
            set_display(matEqual.text)
            correctSize = true
            //Update row and column size of updated matrix
            var matrix_one_row = mat.rowCount(mat1.text)
            var matrix_one_col = mat.colCount(mat1.text)
            mat.setRowAndColSize(matrix_one_row, colSize: matrix_one_col, matrix_num: matEqual.text)
        }
        else
        {
            correctSize = false
            errorMessage = "Uncapatable Sizes"
        }
    }
    
    //Pre: Next button is pressed on Subtraction page
    //Post: Subtracts two matricies. If capatable matricies, new matrix (matEqual) is saved to corresponding matrix in mat. If uncapatable, warning will update
    @IBAction func button_sub(sender: AnyObject)
    {
        //1. Checks to see if all three letter inputs are between A-H
        //2. Check to see if both matricies are of the same size
        //3. If not, mark correct size as false to indicate incapatable matricies and update error message
        if(check_letter_input(mat1.text) || check_letter_input(mat2.text) || check_letter_input(matEqual.text))
        {
            
        }
        else if((mat.rowCount(mat1.text) == mat.rowCount(mat2.text)) && (mat.colCount(mat1.text) == mat.colCount(mat2.text)))
        {
            //Set 2D array varables to the corresponding ones in matrix class and Subtract
            var matrix_one: [[Float]] = mat.DISPLAY(mat1.text)
            var matrix_two: [[Float]] = mat.DISPLAY(mat2.text)
            var matrix_equal: [[Float]] = mat.SUB(matrix_one, matrix_two: matrix_two)
            //Save to the corresponding matrix in matrix class
            mat.SAVE(matEqual.text, matrix_one: matrix_equal)
            //Update display for next screen
            set_display(matEqual.text)
            correctSize = true
            //Update row and column size of updated matrix
            var matrix_one_row = mat.rowCount(mat1.text)
            var matrix_one_col = mat.colCount(mat1.text)
            mat.setRowAndColSize(matrix_one_row, colSize: matrix_one_col, matrix_num: matEqual.text)
        }
        else
        {
            correctSize = false
            errorMessage = "Uncapatable Sizes"
        }
    }
    
    //Pre: Next button is pressed on transpose page
    //Post: Takes the transpose of a matrix and saves it to the corresponding matEqual value
    @IBAction func button_tran(sender: AnyObject)
    {
        //1. Checks to see if both letter inputs are between A-H
        //2. If they are, take transpose
        if(check_letter_input(mat1.text) || check_letter_input(matEqual.text))
        {
            
        }
        else
        {
            pickORfield = true
            var matrix_one: [[Float]] = mat.DISPLAY(mat1.text)
            var matrix_equal: [[Float]] = mat.TRANSPOSE(matrix_one)
            mat.SAVE(matEqual.text, matrix_one : matrix_equal)
            var matrix_one_col = mat.rowCount(mat1.text)
            var matrix_one_row = mat.colCount(mat1.text)
            mat.setRowAndColSize(matrix_one_row, colSize: matrix_one_col, matrix_num: matEqual.text)
            correctSize = true
            set_display(matEqual.text)
        }
    }
    
    //Pre: Next button is pressed on determinate page
    //Post: Takes the determinate if capatable matrix is given
    @IBAction func button_det(sender: AnyObject)
    {
        //1. Checks to see if the inputs are between A-H
        //2. Checks to see if the inputed matrix is square
        //3. If not square, make correctSize as false and update error message
        if(check_letter_input(mat1.text))
        {
            
        }
        else if(mat.rowCount(mat1.text) == mat.colCount(mat1.text))
        {
            pickORfield = true
            var matrix_one: [[Float]] = mat.DISPLAY(mat1.text)
            var rowSize: Int = mat.rowCount(mat1.text)
            det = mat.DETERMINANT(matrix_one, order: rowSize)
            correctSize = true
        }
        else
        {
            correctSize = false
            errorMessage = "Matrix must be a square matrix!"
        }
    }
    
    //Display Determinate when display button is pressed. Shows warning if correctSize is false
    @IBAction func view_det(sender: AnyObject)
    {
        if(correctSize)
        {
            detEqual.text = String(format: "%.2f", det)
        }
        else
        {
            bad_Det.text = "Must select between A through H for matricies"
        }
    }
    
    
    //Pre: Next button is pressed on inverse page
    //Post: Takes the invers of a matrix if capatable, gives warning if not capatable
    @IBAction func button_inverse(sender: AnyObject)
    {
        var matrix_one: [[Float]] = mat.DISPLAY(mat1.text)
        
        if(check_letter_input(mat1.text) || check_letter_input(matEqual.text))
        {
            
        }
        else if((mat.rowCount(mat1.text) == mat.colCount(mat1.text)) && (mat.DETERMINANT(matrix_one, order: mat.rowCount(mat1.text)) != 0))
        {
            pickORfield = true
            var matrix_equal: [[Float]] = mat.INVERSE(matrix_one, order: mat.rowCount(mat1.text))
            mat.SAVE(matEqual.text, matrix_one: matrix_equal)
            var matrix_one_row = mat.rowCount(mat1.text)
            var matrix_one_col = mat.colCount(mat1.text)
            mat.setRowAndColSize(matrix_one_row, colSize: matrix_one_col, matrix_num: matEqual.text)
            correctSize = true
            set_display(matEqual.text)
        }
        else
        {
            correctSize = false
            errorMessage = "Matrix must be a square matrix and determinant cannot equal 0"
        }
    }
    
    
    //Pre: Next button is pressed on Multiplication page
    //Post: Multiplies two matricies. If capatable matricies, new matrix (matEqual) is saved to corresponding matrix in mat. If uncapatable, warning will update
    @IBAction func button_multi(sender: AnyObject)
    {
        //1. Checks to see if all three letter inputs are between A-H
        //2. Check to see if both matricies are of matrix multiplication capatable size
        //3. If not, mark correct size as false to indicate incapatable matricies and update error message
        if(check_letter_input(mat1.text) || check_letter_input(mat2.text) || check_letter_input(matEqual.text))
        {
        
        }
        else if((mat.rowCount(mat1.text) == mat.colCount(mat2.text)) && (mat.rowCount(mat1.text) == mat.colCount(mat2.text)))
        {
            var matrix_one: [[Float]] = mat.DISPLAY(mat1.text)
            var matrix_two: [[Float]] = mat.DISPLAY(mat2.text)
            var matrix_equal: [[Float]] = mat.MULTIPLY(matrix_one, matrix_two: matrix_two)
            mat.SAVE(matEqual.text, matrix_one: matrix_equal)
            set_display(matEqual.text)
            correctSize = true
            var matrix_one_row = mat.rowCount(mat1.text)
            var matrix_one_col = mat.colCount(mat2.text)
            mat.setRowAndColSize(matrix_one_row, colSize: matrix_one_col, matrix_num: matEqual.text)
        }
        else
        {
            correctSize = false
            errorMessage = "Uncapatable matricies"
        }
    }
    
    //Purpose: Returns false if matrix input is correct letter, true if it is not
    func check_letter_input(display: String) -> Bool
    {
        if(display == "A" || display == "a")
        {
            return false
        }
        else if(display == "B" || display == "b")
        {
            return false
        }
        else if(display == "C" || display == "c")
        {
            return false
        }
        else if(display == "D" || display == "d")
        {
            return false
        }
        else if(display == "E" || display == "e")
        {
            return false
        }
        else if(display == "F" || display == "f")
        {
            return false
        }
        else if(display == "G" || display == "g")
        {
            return false
        }
        else if(display == "H" || display == "h")
        {
            return false
        }
        correctSize = false
        errorMessage = "Must select between A through H for matricies"
        return true
    }
    
    
    @IBOutlet weak var Done1: UIButton!
}
