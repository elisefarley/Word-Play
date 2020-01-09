//
//  FifthViewController.swift
//  Word Play
//
//  Created by Elise Farley on 10/21/19.
//  Copyright © 2019 Elise Farley. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    var madLibs = MadLibs()
    
    @IBOutlet weak var label: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = madLibs.writeStory()
    }
}
