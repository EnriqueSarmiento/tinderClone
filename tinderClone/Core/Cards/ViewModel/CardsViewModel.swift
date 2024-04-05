//
//  CardViewModel.swift
//  tinderClone
//
//  Created by Enrique Sarmiento on 5/4/24.
//

import Foundation

class CardsViewModel: ObservableObject{
   @Published var cardModels = [CardModel]()
   
   private let service: CardService
   
   init(service: CardService){
      self.service = service
      Task {
         await fetchCardModels()
      }
   }
   
   func fetchCardModels() async {
      do {
         self.cardModels =  try await service.fetchCardModels()
      } catch let error as NSError {
         print("DEBUG: failes to fetch cards with error: \(error.localizedDescription)")
      }
   }
   
}
