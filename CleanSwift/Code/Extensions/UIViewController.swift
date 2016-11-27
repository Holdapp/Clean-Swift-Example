//
//  UIViewController.swift
//  CleanSwift
//
//  Created by Lukasz szyszkowski on 13.11.2016.
//  Copyright © 2016 Lukasz Szyszkowski. All rights reserved.
//

import UIKit

extension UIViewController {
  static func storyboardIdentifier() -> String {
    let fullName = NSStringFromClass(self)
    let className = fullName.componentsSeparatedByString(".").last
    return className!
  }
}