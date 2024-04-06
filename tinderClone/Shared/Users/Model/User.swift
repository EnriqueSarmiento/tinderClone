//
//  User.swift
//  tinderClone
//
//  Created by Enrique Sarmiento on 5/4/24.
//

import Foundation

struct User: Identifiable, Hashable {
   let id: String
   let fullname: String
   var age: Int
   var profileImageURLs: [String]
}
