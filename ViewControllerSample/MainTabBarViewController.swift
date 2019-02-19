//
//  MainTabBarViewController.swift
//  ViewControllerSample
//
//  Created by CTC Developer Team on 2019/02/19.
//  Copyright © 2019 CTC Developer Team. All rights reserved.
//

import Foundation
import UIKit

final class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc = Nav1ViewController()
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
        let nv = UINavigationController(rootViewController: vc)

        let vc2 = Nav2ViewController()
        vc2.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
        let nv2 = UINavigationController(rootViewController: vc2)

        setViewControllers([nv, nv2], animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
