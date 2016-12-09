//
//  HomeTableViewController.swift
//  Twitter
//
//  Created by Guilherme Souza on 08/12/16.
//  Copyright © 2016 Guilherme Souza. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {
    
    private let cellId = "TweetCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.allowsSelection = false
        
        let nib = UINib(nibName: "TweetTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: cellId)
        
        let iconImage = UIImage(named: "ic_twitter_blue")
        let titleView = UIImageView(image: iconImage)
        navigationItem.titleView = titleView
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        return cell
    }
}
