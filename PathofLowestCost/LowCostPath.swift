//
//  CalcLowestCost.swift
//  PathofLowestCost
//
//  Created by A1 on 10/02/17.
//  Copyright © 2017 ABC. All rights reserved.
//

import Foundation

class LowCostPath {

    static var matrix:Array<Array<Int>> = Array<Array<Int>>()
    class func search(matix:Array<Array<Int>>)->Int{
    
        var returnVal = Array<Array<Int>>()
        
                let NumColumns = matix[0].count
                let NumRows = matix.count
                //var array = Array<Array<Int>>()
        
                for i in 0..<NumColumns {
                    returnVal.append(Array(repeating:Int(), count:NumRows))
                }
        
            //for i in 0..<matix[0].count
        print(matix[0])
        print(matix[1])
        print(matix[2])
        print(matix[3])
        print(matix[4])
       
        //for colVal in matix{
        //for rowVal in colVal{
        //let x = Array[5]()
        
        //arr[0]
        for i in 0..<matix[0].count {
            var str1 = ""
            var str2 = ""
            var str3 = ""
            for j in 0..<matix.count {
                
                //let rowPath1 = i-1 < 0 ? i-1+matix.count : (i-1+matix.count)%matix.count
                str1 = "\(str1) \(matix[j][i])"
                
                //let rowPath2 = (i+matix.count)%matix.count
                str2 = "\(str2) \(matix[j][i])"
                
               // let rowPath3 = (i+1+matix.count)%matix.count
                str3 = "\(str3) \(matix[j][i])"
                
                //for k in -1..<2 {
                    if matix.count > j {
                        let rowPath1 = i-1 < 0 ? i-1+matix.count : (i-1+matix.count)%matix.count
                        str1 = "\(str1) \(matix[rowPath1][j+1])"
                        
                        let rowPath2 = (i+matix.count)%matix.count
                        str2 = "\(str2) \(matix[rowPath2][j+1])"
                        
                        let rowPath3 = (i+1+matix.count)%matix.count
                        str3 = "\(str3) \(matix[rowPath3][j+1])"
                    }
                //}
                
            }
            print("str1 = \(str1)")
            print("str2 = \(str2)")
            print("str3 = \(str3)")
        }
        
        return matix[0][0]
        
        
//        returnVal[0][0] = matix[0][0]
//        //for(int i = 0;i<matix.count;i++)
//        // populate firs row
//        for i in 1..<matix.count
//        {
//            returnVal[0][i] = matix[0][i] + returnVal[0][i - 1];
//        }
//        
//        // populate firs column
//        for i in 1..<matix[0].count
//        {
//            returnVal[i][0] = matix[i][0] + returnVal[i - 1][0];
//        }
//        
//       // for (int i = 1; i < A.length; i++) {
//         //   for (int j = 1; j < A.length; j++) {
//        for i in 1..<matix.count+1 {
//            for j in 1..<matix[0].count+1 {
//                returnVal[i][j] = matix[i][j]
//                    + returnVal[i - 1][j] < returnVal[i][j - 1] ? returnVal[i - 1][j] : returnVal[i][j - 1]
//            }
//        }

       // let val:Int = returnVal[matix.count - 1][matix[0].count - 1]
       // return val
    }
    class func search1(colNum:Int)->Int{
        
        //var returnVal = Array<Array<Int>>()
        
        //var array = Array<Array<Int>>()
        
        let i = colNum
        
        //for i in 0..<matrix[0].count {
            var str1 = ""
            var str2 = ""
            var str3 = ""
            for j in 0..<matrix.count {
                //for k in -1..<2 {
                if matrix.count > j {
                    let rowPath1 = i-1 < 0 ? i-1+matrix.count : (i-1+matrix.count)%matrix.count
                    str1 = "\(str1) \(matrix[rowPath1][j+1])"
                    
                    let rowPath2 = (i+matrix.count)%matrix.count
                    str2 = "\(str2) \(matrix[rowPath2][j+1])"
                    
                    let rowPath3 = (i+1+matrix.count)%matrix.count
                    str3 = "\(str3) \(matrix[rowPath3][j+1])"
                }
                //}
                
            //}
            print("str1 = \(str1)")
            print("str2 = \(str2)")
            print("str3 = \(str3)")
        }
        
        return matrix[0][0]
        
    }
}

/*
 
 public class MinCostPath {
 
 public static int find(int[][] A) {
 int[][] solution = new int[A.length][A.length];
 
 solution[0][0] = A[0][0];
 // fill the first row
 for (int i = 1; i < A.length; i++) {
 solution[0][i] = A[0][i] + solution[0][i - 1];
 }
 
 // fill the first column
 for (int i = 1; i < A.length; i++) {
 solution[i][0] = A[i][0] + solution[i - 1][0];
 }
 
 // path will be either from top or left, choose which ever is minimum
 for (int i = 1; i < A.length; i++) {
 for (int j = 1; j < A.length; j++) {
 solution[i][j] = A[i][j]
 + Math.min(solution[i - 1][j], solution[i][j - 1]);
 }
 }
 return solution[A.length - 1][A.length - 1];
 }
 
 public static void main(String[] args) {
 int[][] A = { { 1, 7, 9, 2 }, { 8, 6, 3, 2 }, { 1, 6, 7, 8 },
 { 2, 9, 8, 2 } };
 System.out.println("Minimum Cost Path " + find(A));
 }
 
 */
