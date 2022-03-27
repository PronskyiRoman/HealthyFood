//
//  BackgroundView.swift
//  HealthyFood (iOS)
//
//  Created by Роман on 26.03.2022.
//

import SwiftUI

struct BackgroundView: View {
    let startColor: Color = .red
    let endColor: Color = .gray
    var body: some View {
        LinearGradient(colors: [startColor, endColor],
                       startPoint: .topTrailing,
                       endPoint: .bottomLeading)
            .ignoresSafeArea(.all)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
