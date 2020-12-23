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
        // NOTE: call next closure whenever `it` will be called.
        beforeEach {
            calculator = Calculator()
        }

        describe("add(_:_:)") {
            it("1 + 2 = 3") {
                expect(calculator.add(1, 2)).to(equal(3))
            }
        }

        describe("subtract(_:_:)") {
            it("3 - 2 = 1") {
                expect(calculator.subtract(3, 2)).to(equal(1))
            }
        }

        describe("multiple(_:_:)") {
            it("2 * 3 = 6") {
                expect(calculator.multiple(2, 3)).to(equal(6))
            }
        }

        describe("division(_:_:)") {
            context("8 / 2") {
                it("return 4") {
                    expect(calculator.division(8, 2)).to(equal(4))
                }
            }

            context("8 / 0") {
                it("return nil") {
                    expect(calculator.division(8, 0)).to(beNil())
                }
            }
        }
    }
}
