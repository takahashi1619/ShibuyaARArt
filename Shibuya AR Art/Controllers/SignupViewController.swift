//
//  SignupViewController.swift
//  Shibuya AR Art
//
//  Created by 高橋基陽 on 2025/01/31.
//
import UIKit
import FirebaseAuth

class SignupViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signupButtonView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // タップジェスチャーの追加
        let tapSignup = UITapGestureRecognizer(target: self, action: #selector(signupButtonTapped))
        signupButtonView.addGestureRecognizer(tapSignup)
    }

    // タップ時のアクション
    @objc func signupButtonTapped(_ sender: UIImage) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                } else {
                    self.performSegue(withIdentifier: "SignupToWelcome", sender: self)
                    print("signup success")
                }
            }
        }
    }
}
