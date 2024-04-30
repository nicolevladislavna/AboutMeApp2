//
//  ViewController.swift
//  AboutMeApp2
//
//  Created by Veronika Iskandarova on 30.04.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let username = "nicole"
    private let password = "0000"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else {return}
        greetingVC.name = username
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard usernameTF.text == username, passwordTF.text == password else {
            showAlert(withTitle: "Error", andMessage: "Login or password is wrong"
            )
            return false
        }
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func forgotUsernameButtonPressed() {
        showAlert(withTitle: "Username", andMessage: "\(username)")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(withTitle: "Password", andMessage: "\(password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

