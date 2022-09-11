//
//  SearchViewController.swift
//  iMusic
//
//  Created by Violetta Illarionova on 9/9/22.
//  Copyright © 2022 Violetta Illarionova. All rights reserved.
//

import UIKit
import Alamofire

struct TRackModel {
    var trackName: String
    var artistName: String
}

class SearchViewController: UITableViewController {
    
    let searchController = UISearchController(searchResultsController: nil)
    
    let tracks = [TRackModel(trackName: "bad guy", artistName: "Billie Eilish"), TRackModel(trackName: "bury a friend", artistName: "Billie Eilish")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellid")
        
        setupSearchBar()
        
    }
    
    private func setupSearchBar() {
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        searchController.searchBar.delegate = self
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid", for: indexPath)
        let track = tracks[indexPath.row]
        cell.textLabel?.text = "indexPath: \(track.trackName)\n\(track.artistName)"
        cell.textLabel?.numberOfLines = 2
        cell.imageView?.image = #imageLiteral(resourceName: "boxINvisible")
        return cell
    }
}


extension SearchViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
        let url = "https://itunes.apple.com/search?term=\(searchText)"
        AF.request(url).responseData { dataREsponse in
            if let error = dataREsponse.error {
                print("error received requestioning data: \(error.localizedDescription)")
                return
            }
            guard let data = dataREsponse.data else {
                return
            }
            let someString = String(data: data, encoding: .utf8)
            print(someString ?? "")
            return
        }
    }
    
}
