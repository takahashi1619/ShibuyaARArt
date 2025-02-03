//
//  SampleViewController.swift
//  Shibuya AR Art
//
//  Created by 高橋基陽 on 2025/02/02.
//
import UIKit

class SampleViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    // messagesにstructのMessageを適用し、送り主とメッセージのデータを格納
    var messages: [Message] = [
        Message(sender: "1@2.com", body: "Hey!"),
        Message(sender: "a@b.com", body: "Hello"),
        Message(sender: "1@2.com", body: "Whats up?")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // tableView.delegate = self
        tableView.dataSource = self
        title = "Sameple Chat"
        
        //nibNameにxibファイル名、forCellReuseIdentifierにTabelViewCellのIdentifier名
        tableView.register(UINib(nibName: "MessageCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
}

extension SampleViewController: UITableViewDataSource {
    // データの数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    // cellの中身の設定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 「as! MessageCell」でxibファイル名指定、withIdentifierにTableViewCellのIdentifier名
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath) as! MessageCell
        //labelはMessgeCellのUILabel名
        cell.label.text = messages[indexPath.row].body
        return cell
    }
}

//extension SampleViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        // cellを押下した時のアクション(TabelViewCellのSelectionがDefaultの時)
//        print(indexPath.row)
//    }
//}
