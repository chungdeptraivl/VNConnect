//
//  MainTabView.swift
//  VNConnect
//
//  Created by Apple on 3/20/24.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            //Trang chu
            FeedView()
                .onTapGesture {
                    self.selectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(0)
            
            //Trang tim kiem
            ExploreView()
                .onTapGesture {
                    self.selectedIndex = 1
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(1)
            
            // Trang thong bao
            NotificationsView()
                .onTapGesture {
                    self.selectedIndex = 2
                }
                .tabItem {
                    Image(systemName: "bell")
                }
                .tag(2)
            
            // Tin nhan
            MessagesView()
                .onTapGesture {
                    self.selectedIndex = 3
                }
                .tabItem {
                    Image(systemName: "message")
                }
                .tag(3)
        }
    }
}

#Preview {
    MainTabView()
}
