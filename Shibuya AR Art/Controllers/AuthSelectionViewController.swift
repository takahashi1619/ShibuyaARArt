//
//  AuthSelectionViewController.swift
//  Shibuya AR Art
//
//  Created by 高橋基陽 on 2025/02/01.
//
import UIKit

class AuthSelectionViewController: UIViewController {
    @IBOutlet weak var signupButtonView: UIImageView!
    @IBOutlet weak var loginButtonView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // タップジェスチャーの追加
        let tapSignup = UITapGestureRecognizer(target: self, action: #selector(signupButtonTapped))
        signupButtonView.addGestureRecognizer(tapSignup)
        
        // タップジェスチャーの追加
        let tapLogin = UITapGestureRecognizer(target: self, action: #selector(loginButtonTapped))
        loginButtonView.addGestureRecognizer(tapLogin)
    }
    
    // タップ時のアクション
    @objc func signupButtonTapped(_ sender: UIImage) {
        self.performSegue(withIdentifier: "SelectionToSignup", sender: self)
        print("signup pressed")
    }
    
    // タップ時のアクション
    @objc func loginButtonTapped(_ sender: UIImage) {
        self.performSegue(withIdentifier: "SelectionToLogin", sender: self)
        print("login pressed")
    }
}
