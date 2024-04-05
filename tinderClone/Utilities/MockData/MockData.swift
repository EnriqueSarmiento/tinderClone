//
//  MockData.swift
//  tinderClone
//
//  Created by Enrique Sarmiento on 5/4/24.
//

import Foundation

struct MockData {
   
   static let users: [User] = [
      .init(id: NSUUID().uuidString, fullname: "charles leclrec", age: 21, profileImageURLs: ["charles", "max","DanielCaldwell"]),
      .init(id: NSUUID().uuidString, fullname: "joy leclrec", age: 24, profileImageURLs: ["charles","DanielCaldwell"]),
      .init(id: NSUUID().uuidString, fullname: "james leclrec", age: 30, profileImageURLs: ["max","DanielCaldwell"]),
      .init(id: NSUUID().uuidString, fullname: "fer leclrec", age: 45, profileImageURLs: ["charles", "max","DanielCaldwell"]),
      .init(id: NSUUID().uuidString, fullname: "luis leclrec", age: 23, profileImageURLs: ["charles","DanielCaldwell"]),
      .init(id: NSUUID().uuidString, fullname: "luisfer leclrec", age: 25, profileImageURLs: ["charles", "max","DanielCaldwell"]),
      .init(id: NSUUID().uuidString, fullname: "javi leclrec", age: 33, profileImageURLs: [ "max","DanielCaldwell"]),
      .init(id: NSUUID().uuidString, fullname: "andres leclrec", age: 27, profileImageURLs: ["charles"]),
      .init(id: NSUUID().uuidString, fullname: "cjose leclrec", age: 24, profileImageURLs: [ "max"]),
      .init(id: NSUUID().uuidString, fullname: "james jr leclrec", age: 22, profileImageURLs: ["charles", "max","DanielCaldwell"]),
   ]
}
