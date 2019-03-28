//
//  CelditaTableViewCell.swift
//  DemoModule
//
//  Created by everis on 27/03/19.
//  Copyright © 2019 Jamer Quiroga. All rights reserved.
//

import UIKit

class CelditaTableViewCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
