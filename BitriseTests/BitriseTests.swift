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

    // MARK: increment()

    func test__increment__sets_the_quatity() {
        sut.quantity.value("5")
        sut.increment()
        XCTAssertEqual(sut.quantity.value, "6")
    }

    func test__increment__when_value_not_integer__sets_nothing() {
        sut.quantity.value("NaN")
        sut.increment()
        XCTAssertEqual(sut.quantity.value, "NaN")
    }
}
