//
//  CardModel.swift
//  tinderClone
//
//  Created by Enrique Sarmiento on 5/4/24.
//

import Foundation

struct CardModel {
   let user: User
}

extension CardModel: Identifiable {
   var id: String { return user.id }
}
