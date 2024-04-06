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
      VStack(spacing: 25){
         ZStack{
            ForEach(viewModel.cardModels){ card in
               CardView(viewModel: viewModel, model: card)
            }
         }
//         .onChange(of: viewModel.cardModels) { oldValue, newValue in
//            print("DEBUG: old value count is \(oldValue.count)")
//            print("DEBUG: new value count is \(newValue.count)")
//         }
         if !viewModel.cardModels.isEmpty {
            SwipeActionButtonsView(viewModel: viewModel)
         }
      }
   }
}
