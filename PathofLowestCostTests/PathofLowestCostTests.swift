//
//  PathofLowestCostTests.swift
//  PathofLowestCostTests
//
//  Created by A1 on 10/02/17.
//  Copyright © 2017 ABC. All rights reserved.
//

import XCTest
@testable import PathofLowestCost

class PathofLowestCostTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testMatrix1() {
        let arr:Array<Array<Int>> = [[3,4,1,2,8,6],[6,1,8,2,7,4],[5,9,3,9,9,5],[8,4,1,3,2,6],[3,7,2,8,6,4]]        let (success, pathSum, path) = out.search(arr)
        XCTAssertTrue(success)
        XCTAssertEqual(16, pathSum)
        XCTAssertEqual([1,2,3,4,4,5], path)
        
    }
    
    func testMatrix1() {
        let arr:Array<Array<Int>> = [[3,4,1,2,8,6],[6,1,8,2,7,4],[5,9,3,9,9,5],[8,4,1,3,2,6],[3,7,2,1,2,3]]        let (success, pathSum, path) = out.search(arr)
        XCTAssertTrue(success)
        XCTAssertEqual(11, pathSum)
        XCTAssertEqual([1,2,1,5,5,5], path)
        
    }
    
    func testMatrixMoreThenFifty() {
        let arr:Array<Array<Int>> = [[19,10,19,10,19],[21,23,20,19,12],[20,12,20,11,10]]        let (success, pathSum, path) = out.search(arr)
        XCTAssertFalse(success)
        XCTAssertEqual(48, pathSum)
        XCTAssertEqual([1,1,1], path)
        
    }

    func testMatrixOneByFive() {
        let arr:Array<Array<Int>> = [[5,8,5,3,5]]        let (success, pathSum, path) = out.search(arr)
        XCTAssertTrue(success)
        XCTAssertEqual(26, pathSum)
        XCTAssertEqual([1,1,1,1,1], path)
        
    }
    func testMatrixOneByFive() {
        let arr:Array<Array<Int>> = [[5],[8],[5],[3],[5]]        let (success, pathSum, path) = out.search(arr)
        XCTAssertTrue(success)
        XCTAssertEqual(3, pathSum)
        XCTAssertEqual([4], path)
        
    }
    func testMatrixNagetive() {
        let arr:Array<Array<Int>> = [[6,3,-5,9],[-5,2,4,10],[3,-2,6,10],[6,-1,-2,10]]        let (success, pathSum, path) = out.search(arr)
        XCTAssertTrue(success)
        XCTAssertEqual(0, pathSum)
        XCTAssertEqual([2,3,4,1], path)

    }
}
