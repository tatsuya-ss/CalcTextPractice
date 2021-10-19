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
    
    func safeDivision(x: Int, y: Int) -> Int? {
        if y == 0 {
            return nil
        } else {
            return x / y
        }
    }

}

final class Cat: Equatable {
    var name = "たま"
    static func == (lhs: Cat, rhs: Cat) -> Bool {
        return lhs.name == rhs.name
    }
}

final class Async {
    
    func echo(message: String,
              handler: @escaping ((String) -> Void)) {
        Thread.sleep(forTimeInterval: 3)
        DispatchQueue.main.async {
            handler("\(message)!!!")
        }
    }
    
}
