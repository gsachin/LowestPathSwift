//
//  searchOptimumPather.swift
//  PathofLowestCost
//
//  Created by A1 on 11/02/17.
//  Copyright © 2017 ABC. All rights reserved.
//

import Foundation
class searchOptimumPath {
    
    init() {
    }

    
    /**
     *   search path
     */
    func search(_ matrix: Array<Array<Int>>) -> (Bool, Int, Array<Int>) {
        if matrix.count == 0 {
            return (false, 0, [])
        }
        
        let mat = Matrix(matrix)
        var lowest: (Bool, Int, Array<Int>)! = nil
        for row in 1...mat.rows {
            let lowestValRow = searchOptPath(mat, 0, [], (row, 1))
            if (lowest == nil || lowestValRow.1 < lowest.1) {
                lowest = lowestValRow
            }
        }
        return lowest
    }
    
    /**
     * find the path
     */
    func searchOptPath(_ mat: Matrix, _ prev: Int, _ prevPath: Array<Int>, _ position: (Int, Int)) -> (Bool, Int, Array<Int>) {
        let pathSum = prev + mat.point(position)
        let (i, j) = position
        let path = prevPath + [i]
        if pathSum > 50 {
            return (false, prev, prevPath)
        } else if j == mat.columns {
            return (true, pathSum, path)
        }
        // find possible path
        let nextUp = searchOptPath(mat, pathSum, path, mat.nextUp(position))
        let nextRight = searchOptPath(mat, pathSum, path, mat.nextRight(position))
        let nextDown = searchOptPath(mat, pathSum, path, mat.nextDown(position))
        // identify best path from these points.
        if bestPath(nextUp, nextRight) && bestPath(nextUp, nextDown) {
            return nextUp
        } else if bestPath(nextRight, nextDown) {
            return nextRight
        } else {
            return nextDown
        }
    }
    
    /**
     * select better path
     */
    func bestPath(_ position1: (Bool, Int, Array<Int>), _ position2: (Bool, Int, Array<Int>)) -> Bool {
        if position1.2.count != position2.2.count {
            return position1.2.count > position2.2.count
        } else {
            return position1.1 <= position2.1
        }
    }
}
