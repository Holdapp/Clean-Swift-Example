//
//  EditDBWorker.swift
//  CleanSwift
//
//  Created by Lukasz szyszkowski on 13.11.2016.
//  Copyright © 2016 Lukasz Szyszkowski. All rights reserved.
//

import RealmSwift
import PromiseKit

class EditDBWorker {
  // Update text
  func updateText(text:String?) -> Promise<Void> {
    return Promise{fulfill, reject in
      do {
        let realm = try Realm()
        try realm.write {
          // delete old objects
          let objects = realm.objects(RMText.self)
          realm.delete(objects)
          // create new object
          let obj = RMText()
          obj.text = text
          realm.add(obj)
        }
        fulfill()
      } catch let error {
        reject(error)
      }
    }
  }
}
