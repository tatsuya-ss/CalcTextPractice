//
//  GitHubRepositoryManager.swift
//  CalcTextPractice
//
//  Created by 坂本龍哉 on 2021/10/21.
//

import Foundation

final class GitHubRepositoryManager {
    private let client: GitHubAPIClient
    private var repos: [GitHubRepository]?
    
    var majorRepositories: [GitHubRepository] {
        guard let repositories = self.repos else { return [] }
        return repositories.filter { $0.star >= 10 }
    }
    
    init() {
        self.client = GitHubAPIClient()
    }
    
    func load(user: String, completion: @escaping () -> Void) {
        self.client.fetchRepositories(user: user) { repositories in
            self.repos = repositories
            completion()
        }
    }
}
