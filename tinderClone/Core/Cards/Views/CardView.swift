//
//  CardView.swift
//  tinderClone
//
//  Created by Enrique Sarmiento on 31/3/24.
//

import SwiftUI

struct CardView: View {
   @ObservedObject var viewModel: CardsViewModel
   @State private var xOffset: CGFloat = 0
   @State private var degrees: Double = 0
   @State private var currentImageIndex = 0
   
   let model: CardModel
   
   var body: some View {
      ZStack(alignment: .bottom) {
         ZStack(alignment: .top){
            Color.black
            Image(user.profileImageURLs[currentImageIndex])
               .resizable()
               .scaledToFill()
               .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
               .overlay {
                  ImageScrollingOverlay(currentImageIndex: $currentImageIndex, imageCount: imageCount)
               }
            
            CardImageIndicatorView(currentImageIndex: currentImageIndex, imageCount: imageCount)
            SwipeActionIndicatorView(xOffset: $xOffset)
         }
         
         UserInfoView(user: user)
         
         
      }
      .onReceive(viewModel.$buttonSwipeAction, perform: { action in
         onReceiveSwipeAction(action)
      })
      .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
      .clipShape(RoundedRectangle(cornerRadius: 10))
      .offset(x: xOffset)
      .rotationEffect(.degrees(degrees))
      .animation(.snappy, value: xOffset)
      .gesture(
         DragGesture()
            .onChanged( onDragChanged)
            .onEnded(onDragEnded)
      )
      
      
   }
}

private extension CardView {
   var user: User {
      return model.user
   }
   
   var imageCount : Int {
      return model.user.profileImageURLs.count
   }
}

private extension CardView{
   
   func returnToCenter (){
      xOffset = 0
      degrees = 0
   }
   
   func swipeRight (){
      withAnimation {
         xOffset = 500
         degrees = 12
      } completion: {
         viewModel.removeCard(model)
      }

   }
   
   func swipeLeft(){
      withAnimation {
         xOffset = -500
         degrees = -12
      } completion: {
         viewModel.removeCard(model)
      }
   }
   
   func onReceiveSwipeAction(_ action: SwipeAction?){
      // it is optional becase will only exist if user touch a button for a buttons actions view.
      guard let action else {return}
      
      let topCard = viewModel.cardModels.last
      
      if topCard == model {
         switch action {
         case .reject:
            swipeLeft()
         case .like:
            swipeRight()
            
         }
         
      }
   }
}

private extension CardView {
   
   func onDragChanged(_ value: _ChangedGesture<DragGesture>.Value){
      xOffset = value.translation.width
      degrees = Double(value.translation.width / 25)
   }
   
   func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value){
      let width = value.translation.width
      
      if abs(width) <= abs(SizeConstants.screenCutOff) {
         returnToCenter()
         return
      }
      
      if width >= SizeConstants.screenCutOff{
         swipeRight()
      }else{
         swipeLeft()
      }
   }
}
