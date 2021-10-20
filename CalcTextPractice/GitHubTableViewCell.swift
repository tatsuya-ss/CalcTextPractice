//
//  GitHubTableViewCell.swift
//  CalcTextPractice
//
//  Created by 坂本龍哉 on 2021/10/21.
//

import UIKit

final class GitHubTableViewCell: UITableViewCell {

    @IBOutlet private weak var label: UILabel!
    
    static var identifier: String { String(describing: self) }
    static var nib: UINib { UINib(nibName: String(describing: self), bundle: nil) }

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(name: String) {
        label.text = name
    }
    
}
