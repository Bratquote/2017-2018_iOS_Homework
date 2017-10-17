//
//  RandomFilesSetter.swift
//  TextTable
//
//  Created by Timur Karimov on 07/10/2017.
//  Copyright © 2017 Timur Karimov. All rights reserved.
//

import Foundation
import UIKit

class friendInList {
    var avatarPhoto: UIImage
    var onlineStatus: UIImage
    var friendName: String
    init (avatar: UIImage, status: UIImage, name: String)
    {
        self.avatarPhoto = avatar
        self.onlineStatus = status
        self.friendName = name
    }
}

class UserInfo {
    static let avatarPhotoList: [UIImage] = [#imageLiteral(resourceName: "CLpWKJM-mercedes-benz-slr-mclaren-wallpaper.jpg"), #imageLiteral(resourceName: "EW4oHRRM4ic.jpg"),#imageLiteral(resourceName: "IMG_5835.jpg"),#imageLiteral(resourceName: "Охуенный мем.jpg")]
    static let onlineStatusList = [#imageLiteral(resourceName: "icons8-Full Stop Filled-50.png"),#imageLiteral(resourceName: "icons8-iPhone-50.png"),#imageLiteral(resourceName: "icons8-Subtract Filled-50.png")]
    static let friendsNameList = ["Timur","Ilnur","Vlad","Rishat","Sergey"]
    
    static func generateFriend() -> friendInList {
        
        let avatar = avatarPhotoList[Int(arc4random_uniform(UInt32(avatarPhotoList.count)))]
        let status = onlineStatusList[Int(arc4random_uniform(UInt32(onlineStatusList.count)))]
        let name = friendsNameList[Int(arc4random_uniform(UInt32(friendsNameList.count)))]
        return friendInList(avatar: avatar, status: status, name: name)
    }
}



