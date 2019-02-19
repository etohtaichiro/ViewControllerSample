//
//  SecondViewController.swift
//  ViewControllerSample
//
//  Created by CTC Developer Team on 2019/02/19.
//  Copyright © 2019 CTC Developer Team. All rights reserved.
//

import Foundation
import UIKit

final class SecondViewController: UIViewController {
    let titleName: String
    
    init(titleName: String) {
        self.titleName = titleName
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    private lazy var container: UIView = {
        let container = UIView()
        container.backgroundColor = UIColor.yellow
        return container
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = titleName
        self.view.addSubview(container)
        //container.snp.makeConstraints { make in
        //    make.edges.equalToSuperview()
        //}
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
