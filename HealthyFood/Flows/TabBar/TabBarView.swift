//
//  TabBarView.swift
//  HealthyFood (iOS)
//
//  Created by Роман on 26.03.2022.
//

import SwiftUI

struct TabBarView: View {
    @State private var selected: MainTabBarItems = .productsList
    private enum MainTabBarItems: Int, Hashable {
        case profile = 0
        case main = 1
        case productsList
    }
    var body: some View {
        TabView(selection: $selected) {
            NavigationView {
                UserProfile()
            }
            .tabItem {
                Label("User", systemImage: "list.bullet")
            }
            .tag(MainTabBarItems.profile)
            
            NavigationView {
                MainScreen()
            }
            .tabItem {
                Label("Main", systemImage: "list.bullet")
            }
            .tag(MainTabBarItems.main)
            
            NavigationView {
                ProductsList()
            }
            .tabItem {
                Label("Products", systemImage: "list.bullet")
            }
            .tag(MainTabBarItems.productsList)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
