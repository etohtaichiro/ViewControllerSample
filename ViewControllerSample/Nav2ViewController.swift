//
//  Nav2ViewController.swift
//  ViewControllerSample
//
//  Created by CTC Developer Team on 2019/02/19.
//  Copyright © 2019 CTC Developer Team. All rights reserved.
//

import Foundation
import UIKit

final class Nav2ViewController: UIViewController {

    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "ダウンロード"
        view = tableView
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension Nav2ViewController: UITableViewDelegate {
}

extension Nav2ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

}
