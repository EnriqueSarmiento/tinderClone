//
//  CardService.swift
//  tinderClone
//
//  Created by Enrique Sarmiento on 5/4/24.
//

import Foundation

struct CardService {
   
   
   func fetchCardModels () async throws -> [CardModel] {
      let users = MockData.users
      
      return users.map({CardModel(user:$0)})
   }
}
