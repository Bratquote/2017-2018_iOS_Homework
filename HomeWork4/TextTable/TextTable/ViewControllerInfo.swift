//
//  ViewControllerInfo.swift
//  TextTable
//
//  Created by Timur Karimov on 13/10/2017.
//  Copyright © 2017 Timur Karimov. All rights reserved.
//

import UIKit

class ViewControllerInfo: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableUserInfo: UITableView!
    let quoteIdentifier = "quoteIdentifier"
    let stickersIdentifier = "stickersIdentifier"
    let lastInfoIdentifier = "lastInfoIdentifier"
    let contactsIdentifier = "contactsIdentifier"
    let careerIdentifier = "careerIdentifier"
    var listNamesSections = [" ", " ", "CONTACTS","CAREER","EDUCATION","BELIEFS"," "," "]
    var mainInfoCollection: [[String]] = [["Birthday", "26 September 1998" ],["Hometown","Воткинск"],["Studied at","КФУ"],["Grandparents","Бабуля"],["Children","Нет"]]
    var educationInfoCollection = [ ["College or University", "КФУ (бывш. КГУ им. Ульянова-Ленина) '20 \nВысшая школа информационных технологий и информационных систем \nFull-time \nStudent (Bachelor's)"], ["School", "Лицей №11 '16 \nVotkinsk\n2005-2016 (a) \nфиз-мат"]    ]
    var beliefsInfoCollection = [["World View", "нет"],["Important in Others","Kindness and Honestly"],["Views on Smoking", "Neutral"],["Views on Alcohol", "Neutral"]          ]
    var lastInfoCollection = ["Noteworthy Pages 65","Documents 242"]
    var contactsImageCollection = [#imageLiteral(resourceName: "icons8-ÐÐ»Ð°Ð²Ð½Ð°Ñ Filled-50.png"),#imageLiteral(resourceName: "icons8-VK Circled Filled-50.png")]
    var contactsTextColletion = ["Votkinsk","timurkarimovm"]
    
    var test = [1,5,2,1,2,4,1,2]
    
    enum NibsNames: String {
        case quoteNibName = "TableViewCellInfo1"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: NibsNames.quoteNibName.rawValue, bundle: nil)
        tableUserInfo.register(nib, forCellReuseIdentifier: quoteIdentifier)
        let nib2 = UINib(nibName: "TableViewCellInfo2", bundle: nil)
        tableUserInfo.register(nib2, forCellReuseIdentifier: stickersIdentifier)
        let nib3 = UINib(nibName: "TableViewCellInfo3", bundle: nil)
        tableUserInfo.register(nib3, forCellReuseIdentifier: lastInfoIdentifier)
        let nib4 = UINib(nibName: "TableViewCellInfo4", bundle: nil)
        tableUserInfo.register(nib4, forCellReuseIdentifier: contactsIdentifier)
        let nib5 = UINib(nibName: "TableViewCellInfo5", bundle: nil)
        tableUserInfo.register(nib5, forCellReuseIdentifier: careerIdentifier)
        
       
        //tableUserInfo.rowHeight = 80
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return test.count
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return test[section]
    }
    
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            
            tableUserInfo.rowHeight = 80
            
        }
        else {
            tableUserInfo.rowHeight = 60
        }
        if indexPath.section == 6 {
            tableUserInfo.rowHeight = 140
            let cell = tableView.dequeueReusableCell(withIdentifier: stickersIdentifier, for: indexPath) as! TableViewCellInfo2
            return cell
        }
            else if indexPath.section == 7
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: lastInfoIdentifier, for: indexPath) as! TableViewCellInfo3
            cell.textLabel?.text = lastInfoCollection[indexPath.row]
            return cell
        }
            else if indexPath.section == 3
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: careerIdentifier, for: indexPath) as! TableViewCellInfo5
            cell.careerName.text = "Официальное сообщество 9а класса"
            cell.careerCity.text = "Votkinsk, 2009-2009"
            cell.careerPost.text = "Boss"
            cell.careerImage.image = #imageLiteral(resourceName: "P-SpcUkzmr8.jpg")
            
            
            return cell
        }
            else if indexPath.section == 2
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: contactsIdentifier, for: indexPath) as! TableViewCellInfo4
            cell.iconContacts.image = contactsImageCollection[indexPath.row]
            cell.labelContacts.text = contactsTextColletion[indexPath.row]
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: quoteIdentifier, for: indexPath) as! TableViewCellInfo1
        
        
        print(indexPath.row + 10 * (indexPath.section + 1))
        // Configure the cell...
        if indexPath.section == 1 {
            cell.quoteLabel.text = mainInfoCollection[indexPath.row][0]
            cell.quoteInfo.text = mainInfoCollection[indexPath.row][1]
        }
        else if indexPath.section == 4 {
            cell.quoteLabel.text = educationInfoCollection[indexPath.row][0]
            cell.quoteInfo.text = educationInfoCollection[indexPath.row][1]
            tableUserInfo.rowHeight = 140
        }
        else if indexPath.section == 5 {
            cell.quoteLabel.text = beliefsInfoCollection[indexPath.row][0]
            cell.quoteInfo.text = beliefsInfoCollection[indexPath.row][1]
        }
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return self.listNamesSections[section]
        
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
