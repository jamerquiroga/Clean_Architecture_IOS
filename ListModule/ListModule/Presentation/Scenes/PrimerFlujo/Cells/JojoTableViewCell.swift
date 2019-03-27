//
//  JojoTableViewCell.swift
//  module
//
//  Created by Daniel Aragon Ore on 3/18/19.
//  Copyright © 2019 bcp. All rights reserved.
//

import UIKit

class JojoTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
