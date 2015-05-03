//
//  Matrix.swift
//  Matrix_Calculator
//
//  Created by Dalton Russell Cole on 4/27/15.
//  Copyright (c) 2015 ABBD. All rights reserved.
//

import Foundation

class Matrix
{
    var A: [[Float]] = [[Float]]()
    var B: [[Float]] = [[Float]]()
    var C: [[Float]] = [[Float]]()
    var D: [[Float]] = [[Float]]()
    var E: [[Float]] = [[Float]]()
    var F: [[Float]] = [[Float]]()
    var G: [[Float]] = [[Float]]()
    var H: [[Float]] = [[Float]]()
    
    var rowA: Int
    var colA: Int
    var rowB: Int
    var colB: Int
    var rowC: Int
    var colC: Int
    var rowD: Int
    var colD: Int
    var rowE: Int
    var colE: Int
    var rowF: Int
    var colF: Int
    var rowG: Int
    var colG: Int
    var rowH: Int
    var colH: Int
    
    //for Determinate
    var d: Float
    
    
    let max_size:Int = 7
    
    init()
    {
        self.A = [[Float]](count:7, repeatedValue:[Float](count:7, repeatedValue:0))
        self.B = [[Float]](count:7, repeatedValue:[Float](count:7, repeatedValue:0))
        self.C = [[Float]](count:7, repeatedValue:[Float](count:7, repeatedValue:0))
        self.D = [[Float]](count:7, repeatedValue:[Float](count:7, repeatedValue:0))
        self.E = [[Float]](count:7, repeatedValue:[Float](count:7, repeatedValue:0))
        self.F = [[Float]](count:7, repeatedValue:[Float](count:7, repeatedValue:0))
        self.G = [[Float]](count:7, repeatedValue:[Float](count:7, repeatedValue:0))
        self.H = [[Float]](count:7, repeatedValue:[Float](count:7, repeatedValue:0))
        
        self.rowA = 0
        self.colA = 0
        self.rowB = 0
        self.colB = 0
        self.rowC = 0
        self.colC = 0
        self.rowD = 0
        self.colD = 0
        self.rowE = 0
        self.colE = 0
        self.rowF = 0
        self.colF = 0
        self.rowG = 0
        self.colG = 0
        self.rowH = 0
        self.colH = 0
        
        self.d = 0
    }
    //Returns the matrix to be displayed
    func DISPLAY(matrix_number: String) -> [[Float]]
    {
        if(matrix_number == "A")
        {
            println("Return A")
            return A
        }
        else if(matrix_number == "B")
        {
            println("Return B")
            return B
        }
        else if(matrix_number == "C")
        {
            println("Return C")
            return C
        }
        else if(matrix_number == "D")
        {
            println("Return D")
            return D
        }
        else if(matrix_number == "E")
        {
            println("Return E")
            return E
        }
        else if(matrix_number == "F")
        {
            return F
        }
        else if(matrix_number == "G")
        {
            return G
        }
        else
        {
            return H
        }
    }
    //Save Matrix
    func SAVE(pick: String, matrix_one: [[Float]])
    {
        if(pick == "A")
        {
            A = matrix_one
            println("Save A")

        }
        else if(pick == "B")
        {
            B = matrix_one
            println("Save B")
        }
        else if(pick == "C")
        {
            C = matrix_one
            println("Save C")
        }
        else if(pick == "D")
        {
            D = matrix_one
            println("Save D")
        }
        else if(pick == "E")
        {
            E = matrix_one
            println("Save E")
        }
        else if(pick == "F")
        {
            F = matrix_one
        }
        else if(pick == "G")
        {
            G = matrix_one
        }
        else if(pick == "H")
        {
            H = matrix_one
        }
    }
    
    func setRowAndColSize(rowSize: Int, colSize: Int, matrix_num: String)
    {
        if(matrix_num == "A")
        {
            rowA = rowSize
            colA = colSize
        }
        else if(matrix_num == "B")
        {
            rowB = rowSize
            colB = colSize
        }
        else if(matrix_num == "C")
        {
            rowC = rowSize
            colC = colSize
        }
        else if(matrix_num == "D")
        {
            rowD = rowSize
            colD = colSize
        }
        else if(matrix_num == "E")
        {
            rowE = rowSize
            colE = colSize
        }
        else if(matrix_num == "F")
        {
            rowF = rowSize
            colF = colSize
        }
        else if(matrix_num == "G")
        {
            rowG = rowSize
            colG = colSize
        }
        else
        {
            rowH = rowSize
            colH = colSize
        }
    }
    
    //Returns number of rows in a matrix
    func rowCount(matrix_num: String) -> Int
    {
        if(matrix_num == "A")
        {
            return rowA
        }
        else if(matrix_num == "B")
        {
            return rowB
        }
        else if(matrix_num == "C")
        {
            return rowC
        }
        else if(matrix_num == "D")
        {
            return rowD
        }
        else if(matrix_num == "E")
        {
            return rowE
        }
        else if(matrix_num == "F")
        {
            return rowF
        }
        else if(matrix_num == "G")
        {
            return rowG
        }
        else
        {
            return rowH
        }
 
    }
    
    //Returns number of Columns in a matrix
    func colCount(matrix_num: String) -> Int
    {
        if(matrix_num == "A")
        {
            return colA
        }
        else if(matrix_num == "B")
        {
            return colB
        }
        else if(matrix_num == "C")
        {
            return colC
        }
        else if(matrix_num == "D")
        {
            return colD
        }
        else if(matrix_num == "E")
        {
            return colE
        }
        else if(matrix_num == "F")
        {
            return colF
        }
        else if(matrix_num == "G")
        {
            return colG
        }
        else
        {
            return colH
        }
        
    }
    //Adds two matricies together
    func ADD(matrix_one: [[Float]], matrix_two: [[Float]]) -> [[Float]]
    {
        var result: [[Float]] = [[Float]](count:7, repeatedValue:[Float](count:7, repeatedValue:0))
        for var i = 0; i < max_size; i++
        {
            for var j=0; j < max_size; j++
            {
                result[i][j] = matrix_one[i][j] + matrix_two[i][j]
            }
        }
        return result
    }
    //Subtracts two matricies
    func SUB(matrix_one: [[Float]], matrix_two: [[Float]]) -> [[Float]]
    {
        var result: [[Float]] = [[Float]](count:7, repeatedValue:[Float](count:7, repeatedValue:0))
        
        for var i = 0; i < max_size; i++
        {
            for var j = 0; j < max_size; j++
            {
                result[i][j] = matrix_one[i][j] - matrix_two[i][j]
            }
        }
        return result
    }
    //Transpose of a matrix
    func TRANSPOSE(matrix_one: [[Float]]) -> [[Float]]
    {
        var result: [[Float]] = [[Float]](count:7, repeatedValue:[Float](count:7, repeatedValue:0))
        for var i = 0; i < max_size; i++
        {
            for var j = 0; j < max_size; j++
            {
                result[i][j] = matrix_one[j][i]
            }
        }
        return result
    }
    //Multiply two matricies
    func MULTIPLY(matrix_one: [[Float]], matrix_two: [[Float]]) -> [[Float]]
    {
        var result: [[Float]] = [[Float]](count:7, repeatedValue:[Float](count:7, repeatedValue:0))
        
        for var i = 0; i < max_size; i++
        {
            for var j = 0; j < max_size; j++
            {
                for var k = 0; k < max_size; k++
                {
                    result[i][j] = result[i][j] + (matrix_one[j][k]*matrix_two[k][j])
                }
            }
        }
        return result
    }
    //Take the inverse of a matrix
    func INVERSE(matrix_one: [[Float]]) -> [[Float]]
    {
        var result: [[Float]] = [[Float]]()
        
        var invert: [[Float]] = [[Float]]()
        
        var invertable = 0//mat.DETERMINANT(matrix_one)
        
        var coefficient: Float = 1
        
        if( invertable != 0)
        {
            for var i = 0; i < max_size; i++
            {
                for var j = 0; j < max_size*2; j++
                {
                    if(i <= j)
                    {
                        invert[i][j] = matrix_one[i][j]
                    }
                    else
                    {
                        if(i == (j-max_size))
                        {
                            invert[i][j] = 1
                        }
                        else
                        {
                            invert[i][j] = 0
                        }
                    }
                }
            }
            for var i = 0; i < max_size; i++
            {
                for var j = 0; j < max_size*2; j++
                {
                    if(i == j && invert[i][j] == 0)
                    {
                        for var k = i; k < max_size-1; k++
                        {
                            for var l = 0; l < max_size*2; l++
                            {
                                var switch_rows = invert[k][l]
                                invert[k][l] = invert[k+1][l+1]
                                invert[k+1][l+1] = switch_rows
                            }
                        }
                        j = -1
                    }
                    else
                    {
                        if(i == j)
                        {
                            if(invert[i][j] != 1)
                            {
                                coefficient = invert[i][j]
                            }
                        }
                        if(invert[i][i] != 1)
                        {
                            invert[i][j] = invert[i][j] / coefficient
                        }
                        //FINISH__-----------------------------------------------
                    }
                }
            }
        }
        else
        {
            //error
        }
        return result
    }
    //Takes the determinite of a matrix
    func DETERMINANT(matrix_one: [[Float]], order: Int) -> Float
    {
        self.d = 0
        var determinant: Float = DET(order, matrix_one: matrix_one)
        return determinant
    }
    func DET(order: Int, matrix_one: [[Float]]) -> Float
    {
        var c: Int
        var subi: Int
        var i: Int
        var j: Int
        var subj: Int
        var power: Float = -1
        var submat: [[Float]] = [[Float]](count:7, repeatedValue:[Float](count:7, repeatedValue:0))
        if(order == 2)
        {
            return((matrix_one[0][0]*matrix_one[1][1]) - (matrix_one[1][0]*matrix_one[0][1]))
        }
        else
        {
            for( c = 0; c < order; c++)
            {
                subi = 0;
                for(i=1; i < order; i++)
                {
                    subj = 0
                    for(j=0; j < order; j++)
                    {
                        if(j == c)
                        {
                            continue
                        }
                        submat[subi][subj] = matrix_one[i][j]
                        subj++
                    }
                    subi++
                }
                power = power * (-1)
                d = d + (power * matrix_one[0][c] * DET(order-1, matrix_one: submat))
            }
        }
        return d
    }
    //Returns the LU Factorization of a matrix
    func LU(matrix_one: [[Float]]) -> (L_matrix: [[Float]], U_matrix: [[Float]])
    {
        var U_matrix: [[Float]] = matrix_one
        var coefficient: Float = 1
        for var i = 1; i < max_size; i++
        {
            for var j = 0; j < max_size; j++
            {
                //Find the Coefficient by taking the first non-zero term in the current row and dividing it by the last row in the same column
                //Then multiples that coefficient to the first row and subtracts the second row to get a new second row
                if(j <= i && U_matrix[i-1][j] != 0)
                {
                    coefficient = U_matrix[i][j]/U_matrix[i-1][j]
                }
                
                if(U_matrix[i-1][j] != 0)
                {
                    U_matrix[i][j] = (U_matrix[i-1][j]*coefficient) - U_matrix[i][j]
                }
            }
        }
        
        var L_matrix: [[Float]] = U_matrix
        
        for var i = 0; i < max_size; i++
        {
            for var j = 0; j < max_size; j++
            {
                if(i == j)
                {
                    coefficient = U_matrix[i][j]
                }
                if(i > j)
                {
                    L_matrix[i][j] = 0
                }
                else
                {
                    if(L_matrix[j][i] != 0)
                    {
                        L_matrix[j][i] = L_matrix[j][i] / coefficient
                    }
                }
            }
        }
        return (L_matrix, U_matrix)
    }
    
}