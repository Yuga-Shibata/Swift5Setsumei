//
//  ViewController.swift
//  Swift5SetsumeiApp
//
//  Created by 柴田優河 on 2020/06/03.
//  Copyright © 2020 Makoto Shibata. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    var animationArray = ["1", "2", "3", "4", "5"]
    var titleString = ["アニメーション1", "アニメーション2", "アニメーション3", "アニメーション4", "アニメーション5"]
    
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ページングが可能になります
        scrollView.isPagingEnabled = true
        
        // アニメーションをプログラムで実装していく
        
        scrollView.contentSize = CGSize(width: view.frame.size.width * 5, height: view.frame.size.height)
        
        for i in 0...4{
            let animationView = AnimationView()
            let animation = Animation.named(animationArray[i])
            animationView.animation = animation
            animationView.frame = CGRect(x: CGFloat(i) * view.frame.size.width, y: 0, width: view.frame.size.width, height: view.frame.size.height)
            animationView.contentMode = .scaleAspectFit
            animationView.loopMode = .loop
            animationView.play()
            scrollView.addSubview(animationView)
        }
    }
    

}

