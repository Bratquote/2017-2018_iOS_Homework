//
//  TableViewCellInfo5.swift
//  TextTable
//
//  Created by Timur Karimov on 15/10/2017.
//  Copyright © 2017 Timur Karimov. All rights reserved.
//

import UIKit

class TableViewCellInfo5: UITableViewCell {
    @IBOutlet weak var careerName: UILabel!
    @IBOutlet weak var careerCity: UILabel!
    @IBOutlet weak var careerPost: UILabel!
    @IBOutlet weak var careerImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.careerImage.layer.cornerRadius = self.careerImage.frame.size.width / 2;
        self.careerImage.clipsToBounds = true;
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
