//
//  Color.swift
//  CleanSwift
//
//  Created by Lukasz szyszkowski on 13.11.2016.
//  Copyright © 2016 Lukasz Szyszkowski. All rights reserved.
//

import ColorWithHex

enum Color:String {
  // Generate with: https://coolors.co/848c8e-435058-dcf763-bfb7b6-f1f2ee
  //
  case Lime = "#DCF763FF"
  case Graphite = "#435058FF"
  case Gray = "#848C8EFF"
  case Beige = "#BFB7B6FF"
  case LightGray = "#F1F2EEFF"
  
  var make:UIColor {
    return UIColor.colorWithHex(self.rawValue)!
  }
}