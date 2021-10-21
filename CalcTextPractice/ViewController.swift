//
//  ViewController.swift
//  CalcTextPractice
//
//  Created by 坂本龍哉 on 2021/10/18.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    
    var manager: GitHubRepositoryManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        self.manager = GitHubRepositoryManager(client: GitHubAPIClient())
        self.manager.load(user: "apple") { [weak self] in
            self?.tableView?.reloadData()
        }
        
    }
    
    private func setupTableView() {
        tableView.register(GitHubTableViewCell.nib,
                           forCellReuseIdentifier: GitHubTableViewCell.identifier)
        tableView.dataSource = self
    }

}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        manager.majorRepositories.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GitHubTableViewCell.identifier) as! GitHubTableViewCell
        let repository = self.manager.majorRepositories[indexPath.row]
        cell.configure(name: repository.name)
        return cell
    }
    
}
