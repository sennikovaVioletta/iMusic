//
//  MusicPresenter.swift
//  iMusic
//
//  Created by Violetta Illarionova on 9/14/22.
//  Copyright (c) 2022 Violetta Illarionova. All rights reserved.
//

import UIKit

protocol MusicPresentationLogic {
  func presentData(response: Music.Model.Response.ResponseType)
}

class MusicPresenter: MusicPresentationLogic {
  weak var viewController: MusicDisplayLogic?
  
  func presentData(response: Music.Model.Response.ResponseType) {
  
  }
  
}
