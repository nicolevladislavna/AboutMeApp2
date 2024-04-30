//
//  GreetingViewController.swift
//  AboutMeApp2
//
//  Created by Veronika Iskandarova on 30.04.2024.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Welcome, \(name)"
    }
    
    
    
   

}
