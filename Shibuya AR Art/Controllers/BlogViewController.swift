//
//  SecondViewController.swift
//  Shibuya AR Art
//
//  Created by 高橋基陽 on 2025/01/25.
//

import UIKit

let photos = ["haruka_nakamura_huyunatu", "haruka_nakamura_haruaki", "piano"]
let words = ["2024/01/23", "2024/05/12", "2025/01/22"]

class BlogViewController: UIViewController {
            
    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}



extension BlogViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath as IndexPath)
        
        let imageView = cell.contentView.viewWithTag(1) as! UIImageView
        let textView = cell.contentView.viewWithTag(2) as! UILabel
        
        // 画像配列の番号で指定された要素の名前の画像をUIImageとする
        let cellImage = UIImage(named: photos[indexPath.row])
        let cellText = words[indexPath.row]
        // UIImageをUIImageViewのimageとして設定
        imageView.image = cellImage
        textView.text = cellText
                
        return cell
    }
}
