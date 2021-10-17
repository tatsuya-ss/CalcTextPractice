//
//  ViewController.swift
//  CalcTextPractice
//
//  Created by 坂本龍哉 on 2021/10/18.
//

import UIKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

final class Calculator {

    func add(x: Int, y: Int) -> Int {
        return x + y
    }

    func subtract(x: Int, y: Int) -> Int {
        return x - y
    }

    func multiple(x: Int, y: Int) -> Int {
        return x * y
    }

    func division(x: Int, y: Int) -> Int {
        return x / y
    }

}
