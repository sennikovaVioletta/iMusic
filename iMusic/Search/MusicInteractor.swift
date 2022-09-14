//
//  MusicInteractor.swift
//  iMusic
//
//  Created by Violetta Illarionova on 9/14/22.
//  Copyright (c) 2022 Violetta Illarionova. All rights reserved.
//

import UIKit

protocol MusicBusinessLogic {
  func makeRequest(request: Music.Model.Request.RequestType)
}

class MusicInteractor: MusicBusinessLogic {

  var presenter: MusicPresentationLogic?
  var service: MusicService?
  
  func makeRequest(request: Music.Model.Request.RequestType) {
    if service == nil {
      service = MusicService()
    }
  }
  
}
