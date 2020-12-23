//
//  StringTests.swift
//  automation-testTests
//
//  Created by Kohei Hayashi on 2020/12/23.
//

private let emptyString = ""
private let someString = "hoge"
private let nilString: String? = nil
private let notNilString = Optional("hoge")

import XCTest

final class StringTests: XCTestCase {
    func testIsEmpty() {
        XCTAssertTrue(emptyString.isEmpty, "return true if string is empty")
        XCTAssertFalse(someString.isEmpty, "return false if string is not empty")
    }

    func testIsNil() {
        XCTAssertTrue(nilString == nil, "return true if optional string is nil")
        XCTAssertFalse(notNilString == nil, "return false if optional string is not nil")
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

        describe("isNil") {
            context("optional string is nil") {
                it("return true") {
                    XCTAssertTrue(nilString == nil)
                }
            }

            context("optional string is not nil") {
                it("return false") {
                    XCTAssertFalse(notNilString == nil)
                }
            }
        }
    }
}
