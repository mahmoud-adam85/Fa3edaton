//
//  Fa3edatonTests.swift
//  Fa3edatonTests
//
//  Created by Mahmoud Adam on 02.02.20.
//  Copyright © 2020 lognlabs. All rights reserved.
//

import XCTest
@testable import Fa3edaton

class Fa3edatonTests: XCTestCase {
    private var mainViewModel: MainViewModel!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        self.mainViewModel = MainViewModel()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testIncrement() {
        let currentDays = mainViewModel.getCurrentDays()
        mainViewModel.incrementDays()
        XCTAssertEqual(mainViewModel.getCurrentDays(), currentDays + 1)
    }
    
    func testDecrement() {
        let currentDays = mainViewModel.getCurrentDays()
        mainViewModel.decrementDays()
        XCTAssertEqual(mainViewModel.getCurrentDays(), currentDays - 1)
    }

}
