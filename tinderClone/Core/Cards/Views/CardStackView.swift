//
//  CardStackView.swift
//  tinderClone
//
//  Created by Enrique Sarmiento on 5/4/24.
//

import SwiftUI

struct CardStackView: View {
   @StateObject var viewModel = CardsViewModel(service: CardService())
   
   var body: some View {
      ZStack{
         ForEach(viewModel.cardModels){ card in
            CardView(model: card)
         }
      }
   }
}
