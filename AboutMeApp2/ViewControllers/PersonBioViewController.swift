//
//  PersonBioViewController.swift
//  AboutMeApp2
//
//  Created by Veronika Iskandarova on 6.05.2024.
//

import UIKit

final class PersonBioViewController: UIViewController {

    private let user = User.getUser()
    
    @IBOutlet var navigationBarLabel: UINavigationItem!
    @IBOutlet var personBioLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBarLabel.title = user.person.name + " БИО"
        personBioLabel.text = user.person.bio
    }
}
