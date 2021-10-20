//
//  Cat.swift
//  CalcTextPractice
//
//  Created by 坂本龍哉 on 2021/10/20.
//

import Foundation

final class Cat: Equatable {
    var name = "たま"
    static func == (lhs: Cat, rhs: Cat) -> Bool {
        return lhs.name == rhs.name
    }
}
