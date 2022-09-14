//
//  NetworkService.swift
//  iMusic
//
//  Created by Violetta Illarionova on 9/13/22.
//  Copyright © 2022 Violetta Illarionova. All rights reserved.
//

import UIKit
import Alamofire

class NetworkService {
    
    func fetchTracks(searchText: String, completion: @escaping (SearchResponce?) -> Void) {
        
            let url = "https://itunes.apple.com/search"
            let parameters = ["term":"\(searchText)",
                              "limit": "10",
                              "media":"music"]
            
            AF.request(url, method: .get, parameters: parameters, encoding: URLEncoding.default, headers: nil, interceptor: nil, requestModifier: nil).responseData { dataResponse in
                if let error = dataResponse.error {
                    print("error received requestioning data: \(error.localizedDescription)")
                    completion(nil)
                    return
                }
                
                guard let data = dataResponse.data else {
                    return
                }
                
                let decoder = JSONDecoder()
                do {
                    let objects = try decoder.decode(SearchResponce.self, from: data)
                    print("objects: ", objects)
                    completion(objects)
                    
                } catch let jsonError {
                    print("failed to decode json", jsonError)
                    completion(nil)
                }
            }
        }
}
