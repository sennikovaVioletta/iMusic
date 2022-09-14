//
//  SearchPresenter.swift
//  iMusic
//
//  Created by Violetta Illarionova on 9/14/22.
//  Copyright (c) 2022 Violetta Illarionova. All rights reserved.
//

import UIKit

protocol SearchPresentationLogic {
  func presentData(response: Search.Model.Response.ResponseType)
}

class SearchPresenter: SearchPresentationLogic {
  weak var viewController: SearchDisplayLogic?
  
  func presentData(response: Search.Model.Response.ResponseType) {
    switch response {
   
    case .some:
        print("presenter .some")
    case .presentTracks:
        print("presenter .presentTracks")
        viewController?.displayData(viewModel: Search.Model.ViewModel.ViewModelData.displayTracks)
    }
  }
}
