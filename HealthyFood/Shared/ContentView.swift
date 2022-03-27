//
//  ContentView.swift
//  Shared
//
//  Created by Roman Pronskyi on 2/19/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            TabBarView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
