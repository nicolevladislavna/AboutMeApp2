//
//  ViewController.swift
//  AboutMeApp2
//
//  Created by Veronika Iskandarova on 30.04.2024.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = User.getUser()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard usernameTF.text == user.username, passwordTF.text == user.password else {
            showAlert(
                withTitle: "Error",
                andMessage: "Login or password is wrong",
                textField: passwordTF
            )
            return false
        }
        return true
    }
    
    @IBAction func forgotUsernameButtonPressed() {
        showAlert(withTitle: "Username", andMessage: "\(user.username)")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(withTitle: "Password", andMessage: "\(user.password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    private func showAlert(withTitle: String, andMessage: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: withTitle, message: andMessage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

