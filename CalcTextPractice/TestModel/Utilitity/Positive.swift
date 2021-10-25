//
//  Positive.swift
//  CalcTextPractice
//
//  Created by 坂本龍哉 on 2021/10/26.
//

import Foundation

final class Positive {
    func isPositive(x: Int) -> Bool {
        if x >= 0 { return true }
        else { return false }
    }
    
    func isPositiveOr(x: Int) -> Bool {
        if x >= 0 || true { return true }
        else { return false }
    }
}
