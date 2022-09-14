//
//  UIViewController + Storyboard.swift
//  iMusic
//
//  Created by Violetta Illarionova on 9/14/22.
//  Copyright © 2022 Violetta Illarionova. All rights reserved.
//

import Foundation
import UIKit


extension UIViewController {
    
    class func loadFromStoryboard<T: UIViewController>() -> T {
        let name = String(describing: T.self)
        let storyboard = UIStoryboard(name: name, bundle: nil)
        if let viewController = storyboard.instantiateInitialViewController() as? T {
            return viewController
        } else {
            fatalError("error: no intial view controller in \(name) in storyboard")
        }
    }
}
