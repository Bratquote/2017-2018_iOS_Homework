//
//  ViewController.swift
//  HomeWork2_VK
//
//  Created by Timur Karimov on 03/10/2017.
//  Copyright © 2017 Timur Karimov. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    @IBOutlet weak var nameProfile: UILabel!
    @IBOutlet weak var avatarProfile: UIImageView!
    
    @IBOutlet weak var onlineProfile: UILabel!
    @IBOutlet weak var townAndAge: UILabel!
    
    @IBOutlet weak var friendsButton: UIButton!
    @IBOutlet weak var followersButton: UIButton!
    @IBOutlet weak var groupsButton: UIButton!
    @IBOutlet weak var photosButton: UIButton!
    @IBOutlet weak var videosButton: UIButton!
    @IBOutlet weak var audiosButton: UIButton!
    
    func randomData(){
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = NSTextAlignment.center
        let color = UIColor.black
        // Do any additional setup after loading the view, typically from a nib.
        let friends = NSAttributedString(string: "\(arc4random_uniform(1000)) \n friends",
            attributes: [NSAttributedStringKey.foregroundColor : color, NSAttributedStringKey.paragraphStyle:paragraphStyle])
        friendsButton.setAttributedTitle(friends, for: .normal) 
        let followers = NSAttributedString(string: "\(arc4random_uniform(1000)) \n followers",
            attributes: [NSAttributedStringKey.foregroundColor : color, NSAttributedStringKey.paragraphStyle:paragraphStyle ])
        followersButton.setAttributedTitle(followers, for: .normal)
        let groups = NSAttributedString(string: "\(arc4random_uniform(1000)) \n groups",
            attributes: [NSAttributedStringKey.foregroundColor : color, NSAttributedStringKey.paragraphStyle:paragraphStyle])
        groupsButton.setAttributedTitle(groups, for: .normal)
        let photos = NSAttributedString(string: "\(arc4random_uniform(1000)) \n photos",
            attributes: [NSAttributedStringKey.foregroundColor : color, NSAttributedStringKey.paragraphStyle:paragraphStyle])
        photosButton.setAttributedTitle(photos, for: .normal)
        let videos = NSAttributedString(string: "\(arc4random_uniform(1000)) \n videos",
            attributes: [NSAttributedStringKey.foregroundColor : color, NSAttributedStringKey.paragraphStyle:paragraphStyle])
        videosButton.setAttributedTitle(videos, for: .normal)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        randomData()
        self.avatarProfile.layer.cornerRadius = self.avatarProfile.frame.size.width / 2;
        self.avatarProfile.clipsToBounds = true;
        nameProfile.text = "Timur Karimov"
        //avatarProfile.image = UIImage(named: "mN9dSeKMFmc.jpg")
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

