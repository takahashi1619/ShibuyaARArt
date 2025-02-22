//
//  ProductCell.swift
//  Shibuya AR Art
//
//  Created by 高橋基陽 on 2025/02/04.
//

import UIKit

class ProductCell: UICollectionViewCell/*UITableViewCell*/ {

    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var informationBubble: UIView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //tableView↓
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//    }
}
