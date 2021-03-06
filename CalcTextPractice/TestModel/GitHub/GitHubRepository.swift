//
//  GitHubRepository.swift
//  CalcTextPractice
//
//  Created by 坂本龍哉 on 2021/10/21.
//

import Foundation

struct GitHubRepository: Codable, Equatable {
    let id: Int
    let star: Int
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case star = "stargazers_count"
        case name
    }
}
