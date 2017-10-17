//
//  TableViewCellFriends.swift
//  TextTable
//
//  Created by Timur Karimov on 08/10/2017.
//  Copyright © 2017 Timur Karimov. All rights reserved.
//

import UIKit

class TableViewCellFriends: UITableViewCell {

    @IBOutlet weak var friendAvatar: UIImageView!
    @IBOutlet weak var friendStatus: UIImageView!
    @IBOutlet weak var friendName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
        self.friendAvatar.layer.cornerRadius = self.friendAvatar.frame.size.width / 2;
        self.friendAvatar.clipsToBounds = true;
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    static func setNewCell(table: TableViewCellFriends)
    {
        let kek = UserInfo.generateFriend()
        table.friendAvatar.image = kek.avatarPhoto
        table.friendName.text = kek.friendName
        table.friendStatus.image = kek.onlineStatus
    }
}
