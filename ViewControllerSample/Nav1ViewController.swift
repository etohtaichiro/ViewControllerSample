//
//  Nav1ViewController.swift
//  ViewControllerSample
//
//  Created by CTC Developer Team on 2019/02/19.
//  Copyright © 2019 CTC Developer Team. All rights reserved.
//

import Foundation
import UIKit

final class Nav1ViewController: UIViewController {

//    private lazy var container: UIView = {
//        let container = UIView()
//        container.backgroundColor = UIColor.gray
//
//        let button = UIButton(type: .system)
//
//        container.addSubview(button)
//
//        button.setTitle("push", for: .normal)
//        button.tintColor = UIColor.white
//        button.backgroundColor = UIColor.blue
//
//        // ボタンを押した時に実行するメソッドを指定
//        //button.addTarget(self, action: #selector(onTappedPush(_:)), for: .touchUpInside)
//        button.addTarget(self, action: #selector(self.onTappedPush(_:)), for: UIControl.Event.touchUpInside)
//
//        //画面の中央に配置
//        //button.center = container.center
//
//        // スクリーンの横縦幅
//        let screenWidth:CGFloat = self.view.frame.width
//        let screenHeight:CGFloat = self.view.frame.height
//
//        // ボタンの位置とサイズを設定
//        button.frame = CGRect(x:screenWidth / 4, y:screenHeight / 2, width:screenWidth / 2, height: 50)
//
//        //button.snp.makeConstraints { make in
//        //    make.width.equalTo(200)
//        //    make.height.equalTo(40)
//        //    make.center.equalTo(container)
//        //}
//        return container
//    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "ブックマーク"

        view.backgroundColor = UIColor.gray
        
        let button = UIButton(type: .system)
        button.setTitle("push", for: .normal)
        button.tintColor = UIColor.white
        button.backgroundColor = UIColor.blue
        
        // ボタンを押した時に実行するメソッドを指定
        //button.addTarget(self, action: #selector(onTappedPush(_:)), for: .touchUpInside)
        button.addTarget(self, action: #selector(self.onTappedPush(_:)), for: UIControl.Event.touchUpInside)
        
        //画面の中央に配置
        //button.center = container.center
        
        // スクリーンの横縦幅
        let screenWidth:CGFloat = self.view.frame.width
        let screenHeight:CGFloat = self.view.frame.height
        
        // ボタンの位置とサイズを設定
        button.frame = CGRect(x:screenWidth / 4, y:screenHeight / 2, width:screenWidth / 2, height: 50)

        self.view.addSubview(button)

        //self.view.addSubview(container)

        // ボタンの位置とサイズを設定
        //container.frame = CGRect(x: screenWidth, y: screenHeight, width: screenWidth, height: screenHeight)

        
        //container.snp.makeConstraints { make in
        //    make.edges.equalToSuperview()
        //}
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func onTappedPush(_ sender: UIButton) {
        print(sender)
        let vc = SecondViewController(titleName: "second")
        navigationController?.pushViewController(vc, animated: true)
    }

}
