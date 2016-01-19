//
//  BitriseTests.swift
//  BitriseTests
//
//  Created by André Schneider on 19/01/16.
//  Copyright © 2016 André Schneider. All rights reserved.
//

import XCTest
@testable import Bitrise

class BitriseTests: XCTestCase {

    var sut: ViewModel!

    override func setUp() {
        super.setUp()
        sut = ViewModel()
    }

    // MARK: init()

    func test__init_sets_the_quantity() {
        XCTAssertEqual(sut.quantity.value, "0")
    }

    func test__init_sets_the_button_title() {
        XCTAssertEqual(sut.buttonTitle.value, "increment")
    }

    // MARK: increment()

    func test_increment_sets_the_quatity() {
        sut.quantity.value("5")
        sut.increment()
        XCTAssertEqual(sut.quantity.value, "6")
    }
}
