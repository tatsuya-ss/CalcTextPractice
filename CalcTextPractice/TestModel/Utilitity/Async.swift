//
//  Async.swift
//  CalcTextPractice
//
//  Created by 坂本龍哉 on 2021/10/20.
//

import Foundation

final class Async {
    
    func echo(message: String,
              handler: @escaping ((String) -> Void)) {
        Thread.sleep(forTimeInterval: 3)
        DispatchQueue.main.async {
            handler("\(message)!!!")
        }
    }
    
}
