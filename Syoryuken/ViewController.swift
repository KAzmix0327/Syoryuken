//
//  ViewController.swift
//  Syoryuken
//
//  Created by 古館和美 on 2022/10/18.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ImageView: UIImageView!
    //キャラ設置
    var imageArrayAttack : Array<UIImage> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "attack1") //画像を変数に読み込む
        ImageView.image = image // imageViewに読み込んだ画像をセット
        
        // 配列に格納
        while let attackImage = UIImage(named: "attack\(imageArrayAttack.count+1)") {
            imageArrayAttack.append(attackImage)
            
        }
    }
    
    @IBAction func button(_ sender: Any) {
        // アニメーションの適用
        ImageView.animationImages = imageArrayAttack
        
        ImageView.animationDuration = 2
        // 1回繰り返し
        ImageView.animationRepeatCount = 1
        // アニメーションを開始
        ImageView.startAnimating()
    }
}

