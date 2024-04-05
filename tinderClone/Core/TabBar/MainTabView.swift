//
//  MainTabView.swift
//  tinderClone
//
//  Created by Enrique Sarmiento on 31/3/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            CardView()
                .tabItem {
                    Image(systemName: "flame")
                }
                .tag(0)
            Text("search tab view new change")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(1)
            Text("ibox tab view")
                .tabItem {
                    Image(systemName: "message.badge.filled.fill")
                }
                .tag(2)
            
            Text("profile tab view")
                .tabItem {
                    Image(systemName: "person")
                }
                .tag(3)
        }
        .tint(.primary)
    }
}
