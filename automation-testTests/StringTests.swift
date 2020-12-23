//
//  StringTests.swift
//  automation-testTests
//
//  Created by Kohei Hayashi on 2020/12/23.
//

private let emptyString = ""
private let someString = "hoge"
private let nilString: String? = nil

import XCTest

final class StringTests: XCTestCase {
    func testIsEmptyOrNil() {
        XCTAssertTrue(emptyString.isEmpty, "return true if string is empty")
        XCTAssertFalse(someString.isEmpty, "return false if string is not empty")
        XCTAssertTrue(nilString == nil, "return true if optional string is nil")
    }
}

import Quick

final class StringSpec: QuickSpec {
    override func spec() {
        describe("isEmpty") {
            context("string is empty") {
                it("return true") {
                    XCTAssertTrue(emptyString.isEmpty)
                }
            }

            context("string is not empty") {
                it("return false") {
                    XCTAssertFalse(someString.isEmpty)
                }
            }
        }

        describe("== nil") {
            context("optional string is nil") {
                it("return true") {
                    XCTAssertTrue(nilString == nil)
                }
            }
        }
    }
}
