//
//  SwipeActionIndicatorView.swift
//  tinderClone
//
//  Created by Enrique Sarmiento on 31/3/24.
//

import SwiftUI

struct SwipeActionIndicatorView: View {
    
    @Binding var xOffset: CGFloat
   
    
    var body: some View {
        HStack {
            Text("LIKE")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.green)
                .overlay{
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.green, lineWidth: 2)
                        .frame(width: 100, height: 48)
                }
                .rotationEffect(.degrees(-45))
                .opacity(Double(xOffset / SizeConstants.screenCutOff))
            Spacer()
            
            Text("NOPE")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.red)
                .overlay{
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.red, lineWidth: 2)
                        .frame(width: 100, height: 48)
                }
                .rotationEffect(.degrees(45))
                .opacity(Double(xOffset / SizeConstants.screenCutOff) * -1)
        }
        .padding(40)
    }
}
