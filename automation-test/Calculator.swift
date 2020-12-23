//
//  Calculator.swift
//  automation-test
//
//  Created by Kohei Hayashi on 2020/12/23.
//

import Foundation

final class Calculator {
    func add(_ arg1: Int, _ arg2: Int) -> Int {
        arg1 + arg2
    }

    func subtract(_ arg1: Int, _ arg2: Int) -> Int {
        arg1 - arg2
    }

    func multiple(_ arg1: Int, _ arg2: Int) -> Int {
        arg1 * arg2
    }

    func division(_ arg1: Int, _ arg2: Int) -> Int? {
        let divisionInt = arg1 / arg2
        return divisionInt != 0 ? divisionInt : nil
    }
}
