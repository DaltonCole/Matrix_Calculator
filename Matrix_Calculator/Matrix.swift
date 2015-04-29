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
        
        
        for var i = 0; i < max_size; i++
        {
            for var j = 0; j < max_size; j++
            {
//                A[i][j] = 0
//                B[i][j] = 0
//                C[i][j] = 0
//                D[i][j] = 0
//                E[i][j] = 0
  //              F[i][j] = 0
    //            G[i][j] = 0
      //          H[i][j] = 0
                
            }
        }
    }
    //Returns the matrix to be displayed
    func DISPLAY(matrix_number: String) -> [[Float]]
    {
        if(matrix_number == "A")
        {
            return A
        }
        else if(matrix_number == "B")
        {
            return B
        }
        else if(matrix_number == "C")
        {
            return C
        }
        else if(matrix_number == "D")
        {
            return D
        }
        else if(matrix_number == "E")
        {
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
        //If non of the above, return matrix H
        return H
    }
    //Save Matrix
    func SAVE(pick: String, matrix_one: [[Float]])
    {
        if(pick == "A")
        {
            A = matrix_one
            println("Save Ran")

        }
        else if(pick == "B")
        {
            B = matrix_one
        }
        else if(pick == "C")
        {
            C = matrix_one
        }
        else if(pick == "D")
        {
            D = matrix_one
        }
        else if(pick == "E")
        {
            E = matrix_one
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
    //Adds two matricies together
    func ADD(matrix_one: [[Float]], matrix_two: [[Float]]) -> [[Float]]
    {
        var result: [[Float]] = [[Float]]()
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
        var result: [[Float]] = [[Float]]()
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
        var result: [[Float]] = [[Float]]()
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
        var result: [[Float]] = [[Float]]()
        for var i = 0; i < max_size; i++
        {
            for var j = 0; j < max_size; j++
            {
                result[i][j] = 0
            }
        }
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
        
        var invertable = DETERMINITE(matrix_one)
        
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
    func DETERMINITE(matrix_one: [[Float]]) -> Float
    {
        var result: [[Float]] = [[Float]]()
        return 1
        //FINISH----------------------------------------------------------
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