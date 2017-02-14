//
//  Matrix.swift
//  PathofLowestCost
//
//  Created by A1 on 11/02/17.
//  Copyright © 2017 ABC. All rights reserved.
//

import Foundation
class Matrix {
    
    var matrix: Array<Array<Int>>!
    
    init(_ matrix: Array<Array<Int>>) {
        self.matrix = matrix
    }
    
    var rows: Int {
        return matrix.count
    }
    
    var columns: Int {
        return matrix[0].count
    }
    
    /**
     * matrix .
     */
    func point(_ position: (Int, Int)) -> Int! {
        let (i, j) = position
        if i <= 0 || i > matrix.count || j <= 0 || j > matrix[0].count {
            return nil
        }
        return matrix[i - 1][j - 1]
    }
    
    /**
     * Move Next column right and return new postion.
     */
    func nextRight(_ position: (Int, Int)) -> (Int, Int)! {
        let (i, j) = position
        if j >= matrix[0].count {
            return nil
        }
        return (i, j + 1)
    }
    
    /**
     * Move Next column up return new postion.
     */
    func nextUp(_ position: (Int, Int)) -> (Int, Int)! {
        
        let (i, j) = position
        if j >= matrix[0].count {
            return nil
        }
        return (i == 1 ? matrix.count : i - 1, j + 1)
    }
    
    /**
     * Move Next column Down return new postion.
     */
    func nextDown(_ position: (Int, Int)) -> (Int, Int)! {
        let (i, j) = position
        if j >= matrix[0].count {
            return nil
        }
        return (i == matrix.count ? 1 : i + 1, j + 1)
    }
    
}
