//
//  SwiftExtensionCollectionTests.swift
//  SwiftExtensionCollectionTests
//
//  Created by huangyibiao on 15/9/22.
//  Copyright © 2015年 huangyibiao. All rights reserved.
//

import Foundation
import XCTest
@testable import SwiftExtensionCollection

class SwiftExtensionCollectionTests: XCTestCase {
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
    testExample()
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testExample() {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    let string = "  就要去"
    XCTAssert(string.hyb_length() == 5)
    XCTAssert(string.hyb_trimLeft() == "就要去")
    
    
    let str = "  \n  测试"
    XCTAssertEqual(str.hyb_trimLeft(), "\n  测试")
    XCTAssertEqual(str.hyb_trimLeft(true), "测试")
    
    
  }
  
//  func testPerformanceExample() {
//    // This is an example of a performance test case.
//    self.measureBlock {
//      // Put the code you want to measure the time of here.
//    }
//  }
  
}
