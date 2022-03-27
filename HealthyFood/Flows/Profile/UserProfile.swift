//
//  UserProfile.swift
//  HealthyFood (iOS)
//
//  Created by Роман on 26.03.2022.
//

import SwiftUI

struct UserProfile: View {
    var body: some View {
        ZStack {
            BackgroundView()
            Text("Here will be User Profile")
                .foregroundColor(.white)
                .font(.title)
        }
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
