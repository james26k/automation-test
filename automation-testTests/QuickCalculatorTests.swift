//
//  QuickCalculatorTests.swift
//  automation-testTests
//
//  Created by Kohei Hayashi on 2020/12/23.
//

import Quick
import Nimble

@testable import automation_test

final class QuickCalculatorTests: QuickSpec {
    override func spec() {
        var calculator: Calculator!

        beforeEach {
            calculator = Calculator()
        }

        describe("sum(_:_:)") {
            it("1 + 2 = 3") {
                expect(calculator.sum(1, 2)).to(equal(3))
            }
        }
    }
}
