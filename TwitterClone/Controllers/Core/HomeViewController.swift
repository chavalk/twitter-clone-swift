//
//  HomeViewController.swift
//  TwitterClone
//
//  Created by Jose Garcia on 12/11/22.
//

import UIKit

class HomeViewController: UIViewController {

    private let timelineTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableView.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(timelineTableView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        timelineTableView.frame = view.frame
    }
}
