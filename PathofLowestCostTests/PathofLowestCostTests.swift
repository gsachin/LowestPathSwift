//
//  PathofLowestCostTests.swift
//  PathofLowestCostTests
//
//  Created by A1 on 10/02/17.
//  Copyright © 2017 ABC. All rights reserved.
//

import XCTest
@testable import PathofLowestCost
 let out = searchOptimumPath()
class PathofLowestCostTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    func testMatrix1() {
        let arr:Array<Array<Int>> = [[3,4,1,2,8,6],[6,1,8,2,7,4],[5,9,3,9,9,5],[8,4,1,3,2,6],[3,7,2,8,6,4]];        let (success, pathSum, path) = out.search(arr)
        XCTAssertTrue(success)
        XCTAssertEqual(16, pathSum)
        XCTAssertEqual([1,2,3,4,4,5], path)
        
    }
    
    func testMatrix2() {
        let arr:Array<Array<Int>> = [[3,4,1,2,8,6],[6,1,8,2,7,4],[5,9,3,9,9,5],[8,4,1,3,2,6],[3,7,2,1,2,3]];
        let (success, pathSum, path) = out.search(arr)
        XCTAssertTrue(success)
        XCTAssertEqual(11, pathSum)
        XCTAssertEqual([1,2,1,5,4,5], path)
        
    }
    
    func testMatrixMoreThenFifty() {
        let arr:Array<Array<Int>> = [[19,10,19,10,19],[21,23,20,19,12],[20,12,20,11,10]];
        let (success, pathSum, path) = out.search(arr)
        XCTAssertFalse(success)
        XCTAssertEqual(48, pathSum)
        XCTAssertEqual([1,1,1], path)
        
    }

    func testMatrixOneByFive() {
        let arr:Array<Array<Int>> = [[5,8,5,3,5]];
        let (success, pathSum, path) = out.search(arr)
        XCTAssertTrue(success)
        XCTAssertEqual(26, pathSum)
        XCTAssertEqual([1,1,1,1,1], path)
        
    }
    func testMatrixFiveByOne() {
        let arr:Array<Array<Int>> = [[5],[8],[5],[3],[5]];        let (success, pathSum, path) = out.search(arr)
        XCTAssertTrue(success)
        XCTAssertEqual(3, pathSum)
        XCTAssertEqual([4], path)
        
    }
    func testMatrixNagetive() {
        let arr:Array<Array<Int>> = [[6,3,-5,9],[-5,2,4,10],[3,-2,6,10],[6,-1,-2,10]];
        let (success, pathSum, path) = out.search(arr)
        XCTAssertTrue(success)
        XCTAssertEqual(0, pathSum)
        XCTAssertEqual([2,3,4,1], path)

    }
}
