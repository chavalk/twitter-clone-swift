//
//  TweetComposeViewController.swift
//  TwitterClone
//
//  Created by Jose Garcia on 1/4/23.
//

import UIKit

class TweetComposeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Tweet"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(didTapToCancel))
    }
    
    @objc private func didTapToCancel() {
        dismiss(animated: true)
    }
}
