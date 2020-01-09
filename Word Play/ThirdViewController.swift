//
//  ThirdViewController.swift
//  Word Play
//
//  Created by Elise Farley on 10/21/19.
//  Copyright © 2019 Elise Farley. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    var madLibs = MadLibs()
    var noun0 = ""
    var noun1 = ""
    var noun2 = ""
    var noun3 = ""
    
    @IBOutlet weak var noun0TextField: UITextField!
    @IBOutlet weak var noun1TextField: UITextField!
    @IBOutlet weak var noun2TextField: UITextField!
    @IBOutlet weak var noun3TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onButtonTapped(_ sender: Any) {
        if noun0TextField.text?.count != 0 && noun1TextField.text?.count != 0 && noun2TextField.text?.count != 0 && noun3TextField.text?.count != 0
        {
            noun0 = String(noun0TextField.text!)
            noun1 = String(noun1TextField.text!)
            noun2 = String(noun2TextField.text!)
            noun3 = String(noun3TextField.text!)
            madLibs.noun0 = noun0
            madLibs.noun1 = noun1
            madLibs.noun2 = noun2
            madLibs.noun3 = noun3
            performSegue(withIdentifier: "ThirdToFourthSegue", sender: Any?.self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let dvc = segue.destination as! FourthViewController
            dvc.madLibs = self.madLibs
        }
    }
