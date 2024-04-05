//
//  UserInfoView.swift
//  tinderClone
//
//  Created by Enrique Sarmiento on 31/3/24.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack(alignment: .listRowSeparatorLeading){
            HStack{
                Text("Charles")
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text("24")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button(action: {
                    print("DEBUG: show profile here")
                }){
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                }
            }
            
            Text("Driver | italian")
                .font(.subheadline)
                .lineLimit(2)
        }
        .foregroundStyle(.white)
        .padding()
        .background(LinearGradient(colors: [.clear,.black], startPoint: .top, endPoint: .bottom))
    }
}
