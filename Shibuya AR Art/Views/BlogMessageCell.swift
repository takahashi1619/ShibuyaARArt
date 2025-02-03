//
//  BlogMessageCell.swift
//  Shibuya AR Art
//
//  Created by 高橋基陽 on 2025/02/02.
//

import UIKit

class BlogMessageCell: UITableViewCell {

    @IBOutlet weak var topImageView: UIImageView!
    @IBOutlet weak var blogMessageBubble: UIView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
