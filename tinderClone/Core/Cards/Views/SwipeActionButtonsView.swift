//
//  SwipeActionButtonsView.swift
//  tinderClone
//
//  Created by Enrique Sarmiento on 6/4/24.
//

import SwiftUI

struct SwipeActionButtonsView: View {
   
   @ObservedObject var viewModel: CardsViewModel
   
    var body: some View {
       HStack(spacing: 32){
          Button{
             viewModel.buttonSwipeAction = .reject
          } label: {
             Image(systemName: "xmark").modifier(buttonIcon(.red))
          }.frame(width: 48, height: 48)
          
          Button{
             viewModel.buttonSwipeAction = .like
          } label: {
             Image(systemName: "heart.fill")
                .modifier(buttonIcon(.green))
          }.frame(width: 48, height: 48)
       }
    }
}

struct buttonIcon: ViewModifier {
  var color: Color
   
   init(_ color: Color){
      self.color = color
   }
   
   func body(content: Content) -> some View{
      content.fontWeight(.heavy)
         .foregroundStyle(Color(color))
         .background{
            Circle()
               .fill(.white)
               .frame(width: 48, height: 48)
               .shadow(radius: 6)
         }
   }
}
