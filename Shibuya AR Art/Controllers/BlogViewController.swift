//
//  SecondViewController.swift
//  Shibuya AR Art
//
//  Created by 高橋基陽 on 2025/01/25.
//

import UIKit

//let photos = ["haruka_nakamura_huyunatu", "haruka_nakamura_haruaki", "piano"]
//let words = ["2024/01/23", "2024/05/12", "2025/01/22"]

class BlogViewController: UIViewController {
            
    @IBOutlet weak var tableView: UITableView!
    
    // blogMessagesにstructのBlogMessageを適用し、送り主とメッセージと日付と画像のデータを格納
    var blogMessages: [BlogMessage] = [
        BlogMessage(sender: "1@2.com", body: "本日よりリリースいたします。渋谷の街中にアート作品を展示します。ARで拡張された世界で、お気に入りの作品に出会いましょう。皆様のことをお待ちしております。", image: UIImage(named: "haruka_nakamura_huyunatu")!, date: "2024/01/23"),
        BlogMessage(sender: "a@b.com", body: "2日目の開発風景です。", image: UIImage(named: "haruka_nakamura_haruaki")!, date: "2024/05/12"),
        BlogMessage(sender: "1@2.com", body: "3日目も頑張ります。", image: UIImage(named: "piano")!, date: "2025/01/22")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // tableView.delegate = self
        tableView.dataSource = self
        
        //nibNameにxibファイル名、forCellReuseIdentifierにTabelViewCellのIdentifier名、bundleはnil
        tableView.register(UINib(nibName: "BlogMessageCell", bundle: nil), forCellReuseIdentifier: "BlogCell")
    }
    
}

extension BlogViewController: UITableViewDataSource {
    // データの数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return blogMessages.count
    }
    
    //cellの中身の設定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 「as! BlogMessageCell」でxibファイル名指定、withIdentifierにTableViewCellのIdentifier名
        let cell = tableView.dequeueReusableCell(withIdentifier: "BlogCell", for: indexPath) as! BlogMessageCell
        //messageLabelはBlogMessgeCellのUILabel名
        cell.messageLabel.text = blogMessages[indexPath.row].body
        //dateLabelはBlogMessgeCellのUILabel名
        cell.dateLabel.text = blogMessages[indexPath.row].date
        //topImageViewはBlogMessgeCellのUIImageView名
        cell.topImageView.image = blogMessages[indexPath.row].image
        return cell
    }
}

//extension BlogViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        // cellを押下した時のアクション(TabelViewCellのSelectionがDefaultの時)
//        print("Cell \(indexPath.row) pressed!")
//    }
//}


//branchのcreateAuthenticationScene以前に使用
//extension BlogViewController: UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return blogMessages.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath as IndexPath)
//        
//        let imageView = cell.contentView.viewWithTag(1) as! UIImageView
//        let textView = cell.contentView.viewWithTag(2) as! UILabel
//        
//        // 画像配列の番号で指定された要素の名前の画像をUIImageとする
//        let cellImage = UIImage(named: photos[indexPath.row])
//        let cellText = words[indexPath.row]
//        // UIImageをUIImageViewのimageとして設定
//        imageView.image = cellImage
//        textView.text = cellText
//                
//        return cell
//    }
//}
