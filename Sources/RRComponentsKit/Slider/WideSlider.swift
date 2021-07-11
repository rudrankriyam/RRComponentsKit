//
//  WideSlider.swift
//  RRComponentsKit
//
//  Created by Rudrank Riyam on 29/03/21.
//

import SwiftUI

struct WideSlider: View {
    @Binding var value: Double
    
    init(_ value: Binding<Double>) {
        self._value = value
    }
    
    var colors: [Color] {
        [.accentColor.opacity(0.8), .accentColor]
    }
    
    var body: some View {
        CustomSlider(value: $value, range: (0, 1)) { modifiers in
            ZStack(alignment: .center) {
                LinearGradient(colors: [.traitsBackground], startPoint: .leading, endPoint: .trailing)
                    .modifier(modifiers.barRight)
                
                LinearGradient(colors: colors, startPoint: .leading, endPoint: .trailing)
                    .modifier(modifiers.barLeft)
                
                Circle()
                    .fill(Color.accentColor)
                    .overlay(Circle().fill(Color.white.opacity(0.15)))
                    .modifier(modifiers.knob)
            }
            .cornerRadius(Constants.cornerRadius)
        }
        .frame(height: 30)
    }
}