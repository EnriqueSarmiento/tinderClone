//
//  CardViewModel.swift
//  tinderClone
//
//  Created by Enrique Sarmiento on 5/4/24.
//

import Foundation

@MainActor
class CardsViewModel: ObservableObject{
   @Published var cardModels = [CardModel]()
   @Published var buttonSwipeAction : SwipeAction?
   
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
   
   func removeCard(_ card: CardModel){
      guard let index = cardModels.firstIndex(where: {$0.id == card.id}) else {return}
      cardModels.remove(at: index)
      
      /*
       For ios 16 <= thus withAnimation completion it is not supported, we could add a delay  of 5ms before removing the card. This will allow us to show the animation of swipping.
       Task{
         try await Task.sleep(nanoseconds: 500_000_000)
       .... rest of code
       }
       */
   }
}
