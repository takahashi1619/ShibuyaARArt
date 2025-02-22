//
//  ViewController.swift
//  Shibuya AR Art
//
//  Created by 高橋基陽 on 2025/01/24.
//

import UIKit
import FirebaseAuth

class WelcomeViewController: UIViewController {

    @IBOutlet weak var ARButtonView: UIImageView!
    @IBOutlet weak var galleryButtonView: UIImageView!
    @IBOutlet weak var shopButtonView: UIImageView!
    @IBOutlet weak var blogButtonView: UIImageView!
    @IBOutlet weak var settingsButtonView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ナビゲーションバーの戻るボタンを隠す
        navigationItem.hidesBackButton = true
        
        //リストにimageViewを格納
        let buttons: [UIImageView] = [ARButtonView, galleryButtonView, shopButtonView, blogButtonView, settingsButtonView]
        //シャドウの適用
        for button in buttons {
            button.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
            button.layer.shadowColor = UIColor.black.cgColor
            button.layer.shadowOpacity = 0.5
            button.layer.shadowRadius = 7
            button.clipsToBounds = false
        }
        
        // タップジェスチャーの追加
        let tapBlog = UITapGestureRecognizer(target: self, action: #selector(blogButtonTapped))
        blogButtonView.addGestureRecognizer(tapBlog)
        
        // タップジェスチャーの追加
        let tapShop = UITapGestureRecognizer(target: self, action: #selector(shopButtonTapped))
        shopButtonView.addGestureRecognizer(tapShop)
        
    }
    
    // blogボタン押下時のアクション
    @objc func blogButtonTapped() {
        print("BlogView tapped!")
        self.performSegue(withIdentifier: "WelcomeToBlog", sender: self)
    }
    
    // shopボタン押下時のアクション
    @objc func shopButtonTapped() {
        print("ShopView tapped!")
        self.performSegue(withIdentifier: "WelcomeToShop", sender: self)
    }
    
    // Logoutボタン押下時のアクション
    @IBAction func logoutPressed(_ sender: UIBarButtonItem) {
        do {
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
            
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
    }
}

