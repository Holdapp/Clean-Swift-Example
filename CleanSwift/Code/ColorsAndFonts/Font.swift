//
//  Font.swift
//  CleanSwift
//
//  Created by Lukasz szyszkowski on 13.11.2016.
//  Copyright © 2016 Lukasz Szyszkowski. All rights reserved.
//

import UIKit

enum Font {
    case regular(CGFloat)
    case bold(CGFloat)
    case ultraLight(CGFloat)
}

enum FontSize:CGFloat {
  case small = 10
  case regular = 12
  case medium = 14
  case large = 19
  
}

extension Font {
  private var name:String {
    switch self {
    case .regular:
      return "AvenirNext-Regular"
    case .bold:
      return "AvenirNext-Bold"
    case ultraLight:
      return "AvenirNext-UltraLight"
    }
  }
  
  var make:UIFont! {
    var fontSize:CGFloat!
    switch self {
    case .regular(let size):
      fontSize = size
    case .bold(let size):
      fontSize = size
    case .ultraLight(let size):
      fontSize = size
    }
    
    let font = UIFont(name: name, size: fontSize)
    guard let aFont = font else {
      return UIFont.systemFontOfSize(fontSize)
    }
    return aFont
  }
}