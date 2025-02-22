//
//  NewShopViewController.swift
//  Shibuya AR Art
//
//  Created by 高橋基陽 on 2025/02/13.
//

import UIKit

class ShopViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var products: [Product] = [
        Product(sender: "1@2.com", name: "スクランブルTシャツ", image: UIImage(named: "T-shirtDummy")!, price: 1500, description: "スクランブル交差点のARアートTシャツ", genre: "clothes"),
        Product(sender: "1@2.com", name: "109Tシャツ", image: UIImage(named: "T-shirtDummy")!, price: 1800, description: "109周辺のARアートTシャツ", genre: "clothes"),
        Product(sender: "1@2.com", name: "ハチ公Tシャツシャツシャツシャツシャツシャツ", image: UIImage(named: "T-shirtDummy")!, price: 1300, description: "ハチ公前のARアートTシャツ", genre: "clothes"),
        Product(sender: "1@2.com", name: "ハチ公Tシャツシャツシャツシャツシャツシャツ", image: UIImage(named: "T-shirtDummy")!, price: 1300, description: "ハチ公前のARアートTシャツ", genre: "clothes"),
        Product(sender: "1@2.com", name: "ハチ公Tシャツシャツシャツシャツシャツシャツ", image: UIImage(named: "T-shirtDummy")!, price: 1300, description: "ハチ公前のARアートTシャツ", genre: "clothes"),
        Product(sender: "1@2.com", name: "ハチ公Tシャツシャツシャツシャツシャツシャツ", image: UIImage(named: "T-shirtDummy")!, price: 1300, description: "ハチ公前のARアートTシャツ", genre: "clothes"),
        Product(sender: "1@2.com", name: "ハチ公Tシャツシャツシャツシャツシャツシャツ", image: UIImage(named: "T-shirtDummy")!, price: 1300, description: "ハチ公前のARアートTシャツ", genre: "clothes"),
        Product(sender: "1@2.com", name: "ハチ公Tシャツシャツシャツシャツシャツシャツ", image: UIImage(named: "T-shirtDummy")!, price: 1300, description: "ハチ公前のARアートTシャツ", genre: "clothes"),
        Product(sender: "1@2.com", name: "ハチ公Tシャツシャツシャツシャツシャツシャツ", image: UIImage(named: "T-shirtDummy")!, price: 1300, description: "ハチ公前のARアートTシャツ", genre: "clothes"),
        Product(sender: "1@2.com", name: "ハチ公Tシャツシャツシャツシャツシャツシャツ", image: UIImage(named: "T-shirtDummy")!, price: 1300, description: "ハチ公前のARアートTシャツ", genre: "clothes"),
        Product(sender: "1@2.com", name: "ハチ公Tシャツシャツシャツシャツシャツシャツ", image: UIImage(named: "T-shirtDummy")!, price: 1300, description: "ハチ公前のARアートTシャツ", genre: "clothes"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // レイアウト設定（2列）
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layout.minimumInteritemSpacing = 10  // アイテム間のスペース
        layout.minimumLineSpacing = 10       // 行間のスペース
        
        // UICollectionView を初期化
//        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "ProductCell", bundle: nil), forCellWithReuseIdentifier: "ProductCell")
    }
    
    
}

extension ShopViewController: UICollectionViewDataSource {
    // セルの数
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    // セルの作成
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCell
        cell.productNameLabel.text = products[indexPath.item].name
        cell.priceLabel.text = String(products[indexPath.item].price)
        return cell
    }
}


//extension ShopViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        // cellを押した時のアクションをここに記載
//    }
//}
