//
//  ResultViewController.swift
//  prad
//
//  Created by macbook on 2/21/21.
//  Copyright © 2021 macbook. All rights reserved.
//

import UIKit
class ResultViewController: UIViewController {
    var result:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        ResultPrad.text=String(result)
       
        switch  result {
        case 0...20:
            outTip.text="not  good"
            view.backgroundColor=UIColor.red
        case 20...50:
            outTip.text="good"
            view.backgroundColor=UIColor.yellow

        default:
           outTip.text="Out  Of  Range"
        }

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var ResultPrad: UILabel!
    @IBOutlet weak var outTip: UILabel!
    
    @IBAction func pressAgain(_ sender: UIButton) {
   performSegue(withIdentifier: "back", sender: self)
    
    }
    
    

}

