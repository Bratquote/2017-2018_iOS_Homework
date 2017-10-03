//
//  ViewController2.swift
//  HomeWork2_VK
//
//  Created by Timur Karimov on 04/10/2017.
//  Copyright © 2017 Timur Karimov. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var kek: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.kek.layer.cornerRadius = self.kek.frame.size.width / 2;
        self.kek.clipsToBounds = true;
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
