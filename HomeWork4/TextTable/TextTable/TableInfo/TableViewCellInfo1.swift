//
//  TableViewCellInfo1.swift
//  TextTable
//
//  Created by Timur Karimov on 12/10/2017.
//  Copyright © 2017 Timur Karimov. All rights reserved.
//

import UIKit

class TableViewCellInfo1: UITableViewCell {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var quoteInfo: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
