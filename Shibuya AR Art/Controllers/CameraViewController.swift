//
//  CameraViewController.swift
//  Shibuya AR Art
//
//  Created by 高橋基陽 on 2025/02/01.
//
import UIKit

class CameraViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // UIImagePickerController カメラを起動する
    // Parameter sender: "UIImagePickerController"ボタン
    @IBAction func startUiImagePickerController(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.delegate = self
        // UIImagePickerController カメラを起動する
        present(picker, animated: true, completion: nil)
    }
    
    // シャッターボタンを押下した際、確認メニューに切り替わる
    // Parameters:
    // picker: ピッカー
    // info: 写真情報
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.originalImage] as! UIImage
        // "写真を使用"を押下した際、写真アプリに保存する
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        // UIImagePickerController カメラが閉じる
        self.dismiss(animated: true, completion: nil)
    }
}

