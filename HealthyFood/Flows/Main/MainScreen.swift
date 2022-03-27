//
//  MainScreen.swift
//  HealthyFood (iOS)
//
//  Created by Роман on 26.03.2022.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        ZStack {
            BackgroundView()
            Text("Welcome to the HealthyFood")
                .foregroundColor(.white)
                .font(.title)
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
