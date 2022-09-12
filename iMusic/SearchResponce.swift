//
//  SearchResponce.swift
//  iMusic
//
//  Created by Violetta Illarionova on 9/12/22.
//  Copyright © 2022 Violetta Illarionova. All rights reserved.
//

import Foundation


struct SearchResponce: Decodable {
    var resultCount: Int
    var results: [Track]
}

struct Track: Decodable {
    var trackName: String
    var collectionName: String?
    var artistName: String
    var artworkUrl100: String?
}
