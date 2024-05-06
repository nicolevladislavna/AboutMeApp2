//
//  TapBarViewController.swift
//  AboutMeApp2
//
//  Created by Veronika Iskandarova on 4.05.2024.
//

import UIKit

final class TapBarViewController: UITabBarController {
   
    let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.items?.last?.title = user.person.name
    }
}
