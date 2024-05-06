//
//  PersonInfoViewController.swift
//  AboutMeApp2
//
//  Created by Veronika Iskandarova on 4.05.2024.
//

import UIKit

final class PersonInfoViewController: UIViewController {
    
    private let user = User.getUser()
    
    @IBOutlet var navigationBarLabel: UINavigationItem!
    
    @IBOutlet var personNameLabel: UILabel!
    @IBOutlet var personSurnameLabel: UILabel!
    @IBOutlet var personCompanyLabel: UILabel!
    @IBOutlet var personDepartmentLabel: UILabel!
    @IBOutlet var personPositionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBarLabel.title = user.person.name
        
        personNameLabel.text = user.person.name
        personSurnameLabel.text = user.person.surname
        personCompanyLabel.text = user.person.company.companyName
        personDepartmentLabel.text = user.person.company.department
        personPositionLabel.text = user.person.company.position
    }
}
