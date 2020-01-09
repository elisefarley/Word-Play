//
//  FourthViewController.swift
//  Word Play
//
//  Created by Elise Farley on 10/21/19.
//  Copyright © 2019 Elise Farley. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    var madLibs = MadLibs()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! FifthViewController
        dvc.madLibs = self.madLibs
    }
}
