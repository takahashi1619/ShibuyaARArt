//
//  SignUpViewController.swift
//  Shibuya AR Art
//
//  Created by 高橋基陽 on 2025/01/27.
//
import UIKit
import FirebaseAuth

class UserAuthenticationViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func signupPressed(_ sender: UIButton) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                } else {
                    //modalを閉じる
                    self.dismiss(animated: true, completion: nil)
                }
            }
        }
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                } else {
                    self.dismiss(animated: true, completion: nil)
                    print("Login successed")
                }
            }
        }
    }
}
