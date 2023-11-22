//
//  MainTabView.swift
//  AirBnB
//
//  Created by Martin Wainaina on 22/11/2023.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            ExploreView()
                .tabItem{ Label("Explore", systemImage: "magnifyingglass")}
            
            WishListView()
                .tabItem{ Label("Wishlist", systemImage: "heart")}
            
            ProfileView()
                .tabItem{ Label("Profile", systemImage: "person")}
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
