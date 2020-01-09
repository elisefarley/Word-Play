//
//  SecondViewController.swift
//  Word Play
//
//  Created by Elise Farley on 10/21/19.
//  Copyright © 2019 Elise Farley. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var madLibs = MadLibs()
    var adjective0 = ""
    var adjective1 = ""
    var adjective2 = ""
    var adjective3 = ""
    
    @IBOutlet weak var adjective0TextField: UITextField!
    @IBOutlet weak var adjective1TextField: UITextField!
    @IBOutlet weak var adjective2TextField: UITextField!
    @IBOutlet weak var adjective3TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onButtonTapped(_ sender: Any) {
        if adjective0TextField.text?.count != 0 && adjective1TextField.text?.count != 0 && adjective2TextField.text?.count != 0 && adjective3TextField.text?.count != 0
        {
            adjective0 = String(adjective0TextField.text!)
            adjective1 = String(adjective1TextField.text!)
            adjective2 = String(adjective2TextField.text!)
            adjective3 = String(adjective3TextField.text!)
            madLibs.adjective0 = adjective0
            madLibs.adjective1 = adjective1
            madLibs.adjective2 = adjective2
            madLibs.adjective3 = adjective3
            performSegue(withIdentifier: "SecondToThirdSegue", sender: Any?.self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! ThirdViewController
        dvc.madLibs = self.madLibs
    }
}
