//
//  ViewController.swift
//  prad
//
//  Created by macbook on 2/21/21.
//  Copyright © 2021 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var s1:Int=0
    var s2:Int=0
    var p = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        slabel.text=""
        tlabel.text=""
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var slabel: UILabel!
    @IBOutlet weak var tlabel: UILabel!
    
    @IBAction func stepper1(_ sender: UIStepper) {
        slabel.text=String(Int(sender.value))
        s1=(Int(sender.value))
    }
    
    
    @IBAction func stepper2(_ sender: UIStepper) {
        tlabel.text=String(Int(sender.value))
        s2=(Int(sender.value))

    }
    
    @IBAction func pradAns(_ sender: UIButton) {
        p = s1*s1*s2
        testOut.text=String(p)
        performSegue(withIdentifier: "connect", sender: self)
    }
    
    @IBOutlet weak var testOut: UILabel!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultPra = segue.destination as! ResultViewController
        resultPra.result=p
        
    }
    
}

