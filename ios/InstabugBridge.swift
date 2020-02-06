//
//  InstabugBridge.swift
//  NativeBridgingApp
//
//  Created by Abdelrahman-Arw on 2/6/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

import Foundation
import Instabug
@objc(InstabugBridge)
class InstabugBridge: NSObject {
  
  @objc func getUserData(){
    
    let profileDetails = "user.allProfileDetails()"
    let profileDetailsString = "\(profileDetails)"
    Instabug.userData = profileDetailsString
    print("Hello")
    
  }
}
@objc(Counter)
class Counter: NSObject {
  @objc var count = 0
  @objc
  func increment() {
    
    count += 1
    print("count is \(count)")
  }
  @available(iOS 11.0, *)
  @objc(reColour:green:blue:)
  func reColour(red:NSNumber,green:NSNumber,blue:NSNumber) {
    increment()
    let profileDetails = "user.allProfileDetails()"
    let profileDetailsString = "\(profileDetails)"
    Instabug.userData = profileDetailsString
    
    Instabug.tintColor = UIColor(red: CGFloat(Float(truncating: red)/255), green: CGFloat(Float(truncating: green)/255), blue: CGFloat(Float(truncating: blue)/255), alpha: 1)
    
  }
  @objc
  func constantsToExport() -> [AnyHashable : Any]! {
    return [
      "number": 123.9,
      "string": "foo",
      "boolean": true,
      "array": [1, 22.2, "33"],
      "object": ["a": 1, "b": 2]
    ]
  }

}
