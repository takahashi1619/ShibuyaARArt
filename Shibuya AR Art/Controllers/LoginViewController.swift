//
//  SignupViewController.swift
//  Shibuya AR Art
//
//  Created by 高橋基陽 on 2025/01/31.
//
import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButtonView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // タップジェスチャーの追加
        let tapLogin = UITapGestureRecognizer(target: self, action: #selector(loginButtonTapped))
        loginButtonView.addGestureRecognizer(tapLogin)
    }
    
    // タップ時のアクション
    @objc func loginButtonTapped(_ sender: UIImage) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                } else {
                    self.performSegue(withIdentifier: "LoginToWelcome", sender: self)
                    print("Login successed")
                }
            }
        }
    }
}
