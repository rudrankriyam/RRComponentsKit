//
//  CustomSliders.swift
//  RRComponentsKit
//
//  Created by Rudrank Riyam on 29/03/21.
//

import SwiftUI

struct CustomSliders: View {
    @Binding var value: Double
    var color: Color = .gray

    var colors: [Color] {
        [Color.gradientGray.opacity(0.8), Color.gradientGray]
    }

    var body: some View {
        CustomSlider(value: $value, range: (0, 1)) { modifiers in
            ZStack {
                LinearGradient(gradient: .init(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)

                color.modifier(modifiers.barLeft)

                Rectangle()
                    .fill(color)
                    .cornerRadius(Constants.cornerRadius)
                    .modifier(modifiers.knob)
            }
            .cornerRadius(Constants.cornerRadius)
        }
        .frame(height: 28)
    }
}
