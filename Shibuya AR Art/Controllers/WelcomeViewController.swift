//
//  ViewController.swift
//  Shibuya AR Art
//
//  Created by 高橋基陽 on 2025/01/24.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var ARButtonView: UIImageView!
    @IBOutlet weak var galleryButtonView: UIImageView!
    @IBOutlet weak var shopButtonView: UIImageView!
    @IBOutlet weak var blogButtonView: UIImageView!
    @IBOutlet weak var settingsButtonView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        let tapAR = UITapGestureRecognizer(target: self, action: #selector(ARButtonTapped))
        ARButtonView.addGestureRecognizer(tapAR)
    }
    
    // タップ時のアクション
    @objc func blogButtonTapped() {
        print("BlogView tapped!")
        self.performSegue(withIdentifier: "WelcomeToBlog", sender: self)
    }
    
    // タップ時のアクション
    @objc func ARButtonTapped() {
        print("ARView tapped!")
        self.performSegue(withIdentifier: "WelcomeToCamera", sender: self)
    }
}

