//
//  StringTests.swift
//  automation-testTests
//
//  Created by Kohei Hayashi on 2020/12/23.
//

import Foundation
import XCTest

final class StringTests: XCTestCase {
    private let emptyString = ""
    private let someString = "hoge"
    private let nilString: String? = nil

    func testIsEmptyOrNil() {
        XCTAssertTrue(emptyString.isEmpty, "nilの場合はtrueを返す")
        XCTAssertFalse(someString.isEmpty, "空文字列ではない場合はtrueを返す")
        XCTAssertTrue(nilString == nil, "nilの場合はtrueを返す")
    }
}
