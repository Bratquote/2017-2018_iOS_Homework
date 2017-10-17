//
//  ViewController.swift
//  HomeWork5_Closures
//
//  Created by Timur Karimov on 16/10/2017.
//  Copyright © 2017 Timur Karimov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tt = 6
    var competitionBlock: String = ""
    var lols: Int {
        tt = 4
        return 3
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(tt)
        print(lols)
        print(tt)
//        stringShift(shift: 2, str: "HelloWorld")
        stringShift(shift: 2, str: "HellpWrold") { (string) in
            print (string)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func stringShift(shift: Int, str: String, completionBlock: @escaping ((String) -> Void))
    {
        
        let shift1 = str.index(str.startIndex, offsetBy: str.endIndex.encodedOffset - shift)
        var k1 = str[shift1...]
        let k2 = str[...shift1]
        k1 += k2
        
        print(k1)
        completionBlock(String(k1))
        
    }
    func returnPiNumber(position: Int) -> () -> Int {
        
        func findNumber() -> Int {
            // Можно было M_PI, но там мало цифр после запятой, поэтому взял с вики
            let pi: String = "31415926535897932384626433832795028841971693993751058209749445923078164 062862089986280348253421170679821480865132823066470938446095505822317253594081284811174502841027019385211055596446229489549303819644288109756659334461284756482337867831652712019091456485669234603486104543266482133936072602491412737245870066063155881748815209209628292540917153643678925903600113305305488204665213841469519415116094330572703657595919530921861173819326117931051185480744623799627495673518857527248912279381830119491298336733624406566430860213949463952247371907021798609437027705392171762931767523846748184676694051320005681271452635608277857713427577896091736371787214684409012249534301465495853710507922796892589235420199561121290219608640344181598136297747713099605187072113499999983729780499510597317328160963185950244594553469083026425223082533446850352619311881710100031378387528865875332083814206171776691473035982534904287554687311595628638823537875937519577818577805321712268066130019278766111959092164201989"
            let index = pi.index(pi.startIndex, offsetBy: position)
            let kek: Int = Int(String(pi[index]))!
            return kek
        }
        return findNumber
    }
}


