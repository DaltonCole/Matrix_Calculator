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
    //8 two-D arrays to store each matrix
    var A: [[Float]] = [[Float]]()
    var B: [[Float]] = [[Float]]()
    var C: [[Float]] = [[Float]]()
    var D: [[Float]] = [[Float]]()
    var E: [[Float]] = [[Float]]()
    var F: [[Float]] = [[Float]]()
    var G: [[Float]] = [[Float]]()
    var H: [[Float]] = [[Float]]()
    
    //Row and column count (starting at 1) for each matrix
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
    
    //For Determinate, not unique for each matrix
    var d: Float
    
    
    let max_size:Int = 7
    
    init()
    {
        //Set each matrix to be a 7x7 matrix of all 0s
        self.A = [[Float]](count:7, repeatedValue:[Float](count:7, repeatedValue:0))
        self.B = [[Float]](count:7, repeatedValue:[Float](count:7, repeatedValue:0))
        self.C = [[Float]](count:7, repeatedValue:[Float](count:7, repeatedValue:0))
        self.D = [[Float]](count:7, repeatedValue:[Float](count:7, repeatedValue:0))
        self.E = [[Float]](count:7, repeatedValue:[Float](count:7, repeatedValue:0))
        self.F = [[Float]](count:7, repeatedValue:[Float](count:7, repeatedValue:0))
        self.G = [[Float]](count:7, repeatedValue:[Float](count:7, repeatedValue:0))
        self.H = [[Float]](count:7, repeatedValue:[Float](count:7, repeatedValue:0))
        
        //each matrix starts out with having 0 rows and 0 columns for computations
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
        
        //Determinate is set to 0, to be calculated later. This is not unique for each matrix
        self.d = 0
    }
    
    //Pre: Passes in the matrix the user wants as a string
    //Post: Returns the matrix to be displayed as a two-D float
    func DISPLAY(matrix_number: String) -> [[Float]]
    {
        if(matrix_number == "A")
        {
            println("Return A") //Print line is for debuging, will need to be deleted in final product
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
    
    //Pre: A string and matrix previously calculated is passed
    //Post: Returns void. This functions alters a user specified 2-D array in the matrix class to corelate to the calculated array.
    func SAVE(pick: String, matrix_one: [[Float]])
    {
        if(pick == "A")
        {
            A = matrix_one
            println("Save A") //For Debuging

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
    
    //Pre: Two Ints, representing the row and column size of a matrix that is known by passing a string is passed with the string
    //Post: Sets row size and column size for the specified 2-D array according to matrix_num
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
    
    //Pre: A string that represents a specific 2-D array is passed
    //Post: The row count for the specified 2-D array is returned
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
    
    //Pre: A string that represents a specific 2-D array is passed
    //Post: The column count for the specified 2-D array is returned
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
    
    //Pre: Two 2-D arrays representing two matricies are passed
    //Post: A third 2-D array is returned that is the sum of the first two matricies
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
    
    //Pre: Two 2-D arrays representing two matricies are passed
    //Post: A third 2-D array is retured that is the difference of the first two matricies
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
    
    //Pre: A 2-D array is passed
    //Post: A 2-D array is returned that represents the transpose of the original matrix. The row and column of the new matrix is not updated in this function, but should be else where
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
    
    //Pre: Two 2-D arrays are passed
    //Post: A third 2-D array is returned that represents the matrix multiple of the others
    func MULTIPLY(matrix_one: [[Float]], matrix_two: [[Float]]) -> [[Float]]
    {
        var result: [[Float]] = [[Float]](count:7, repeatedValue:[Float](count:7, repeatedValue:0))
        
        for var i = 0; i < max_size; i++
        {
            for var j = 0; j < max_size; j++
            {
                for var k = 0; k < max_size; k++
                {
                    result[i][j] = result[i][j] + (matrix_one[i][k]*matrix_two[k][j])
                }
            }
        }
        return result
    }
    
    
    
    //Pre: A 2-D array is passed along with its row (or column because it is a square matrix) size
    //Post: A 2-D array which is the inverse of the original matrix is returned. It should be checked else where (using the determinate) if the inverse exists
    func INVERSE(matrix_one: [[Float]], order: Int) -> [[Float]]
    {
        
        var i: Int
        var j: Int
        var k: Int
        var n: Int = order
        
        var a: [[Float]] = [[Float]](count: 20, repeatedValue: [Float](count:20, repeatedValue:0))
        var invert: [[Float]] = [[Float]](count: 7, repeatedValue: [Float](count: 7, repeatedValue:0))
        var d: Float
        
        for i = 1; i <= n; i++
        {
            for j = 1; j <= n; j++
            {
                a[i][j] = matrix_one[i-1][j-1]
            }
        }
        
        for i = 1; i <= n ; i++
        {
            for j = 1; j <= 2*n; j++
            {
                if (j == (i+n))
                {
                    a[i][j] = 1
                }
            }
        }
        
        for i = n; i > 1; i--
        {
            if( a[i-1][1] < a[i][1])
            {
                for j = 1; j <= n*2; j++
                {
                    d = a[i][j]
                    a[i][j] = a[i-1][j]
                    a[i-1][j] = d
                }
            }
        }
        
        for i = 1; i <= n; i++
        {
            for j = 1; j <= n*2; j++
            {
                if(j != i)
                {
                    d = a[j][i] / a[i][i]
                    for k = 1; k <= n*2; k++
                    {
                        a[j][k] = a[j][k] - (a[i][k] * d)
                    }
                }
            }
        }
        for i = 1; i <= n; i++
        {
            d = a[i][i]
            for j = 1; j <= n*2; j++
            {
                a[i][j] = a[i][j] / d
            }
        }
        for i = 1; i <= n; i++
        {
            for j = n+1; j <= n*2; j++
            {
                invert[i-1][(j-1)-n] = a[i][j]
                println("\(a[i][j])")
            }
        }
        
        return invert
        
    }

        
    //Pre: A 2-D array is passed with the row (or column) size
    //Post: A Float is returned which represents the determinate
    func DETERMINANT(matrix_one: [[Float]], order: Int) -> Float
    {
        self.d = 0
        var determinant: Float = DET(order, matrix_one: matrix_one)
        return determinant
    }
    
    //Purpose: The work horse of the DETERMINANT function
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
    
    /*
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
    */
}