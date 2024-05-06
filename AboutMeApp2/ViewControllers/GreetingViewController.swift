//
//  GreetingViewController.swift
//  AboutMeApp2
//
//  Created by Veronika Iskandarova on 30.04.2024.
//

import UIKit

final class GreetingViewController: UIViewController {

    private let user = User.getUser()
    
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var myNameIsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Welcome, \(user.username)!"
        myNameIsLabel.text = "Меня зовут \(user.person.name)"
    }
}
