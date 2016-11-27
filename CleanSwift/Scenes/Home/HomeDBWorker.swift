//
//  HomeDBWorker.swift
//  CleanSwift
//
//  Created by Lukasz szyszkowski on 13.11.2016.
//  Copyright © 2016 Lukasz Szyszkowski. All rights reserved.
//

import RealmSwift
import PromiseKit

class HomeDBWorker {
  
  // Fetch object
  func fetchText() -> Promise<RMText?> {
    return Promise{fulfill, reject in
      do {
        let realm = try Realm()
        let obj = realm.objects(RMText.self).first
        fulfill(obj)
      }catch let error {
        reject(error)
      }
    }
  }
}
