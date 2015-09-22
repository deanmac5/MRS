//
//  ReleaseTableViewCell.swift
//  MRS-iOS
//
//  Created by Dean on 22/09/2015.
//  Copyright © 2015 osb. All rights reserved.
//

import UIKit

class ReleaseTableViewCell: UITableViewCell {
    
    // MARK: Properties
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var snippetLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
