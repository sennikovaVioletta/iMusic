//
//  SearchViewController.swift
//  iMusic
//
//  Created by Violetta Illarionova on 9/9/22.
//  Copyright © 2022 Violetta Illarionova. All rights reserved.
//

import UIKit

class SearchViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellid")
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid", for: indexPath)
        cell.textLabel?.text = "indexPath: \(indexPath)"
        return cell
        
    }
}
