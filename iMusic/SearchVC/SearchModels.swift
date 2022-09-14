//
//  SearchModels.swift
//  iMusic
//
//  Created by Violetta Illarionova on 9/14/22.
//  Copyright (c) 2022 Violetta Illarionova. All rights reserved.
//

import UIKit

enum Search {
   
  enum Model {
    struct Request {
      enum RequestType {
        case some
        case getTracks
      }
    }
    struct Response {
      enum ResponseType {
        case some
        case presentTracks
      }
    }
    struct ViewModel {
      enum ViewModelData {
        case some
        case displayTracks
      }
    }
  }
  
}
