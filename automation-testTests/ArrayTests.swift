//
//  ArrayTests.swift
//  automation-testTests
//
//  Created by Kohei Hayashi on 2020/12/23.
//

private let array = ["one", "two", "three"]

import XCTest

final class ArrayTest: XCTestCase {
    func testContains() {
        XCTAssertFalse(array.contains("four"), "return false if array contains 'four'")
    }
}

import Nimble

final class ArraySpec: XCTestCase {
    func testContains() {
        expect(array).toNot(contain("four"), description: "return false if array contains 'four'")
    }
}
