//
//  CustomButtonStyle.swift
//  Reminders
//
//  Created by Brenden Vogt on 8/10/21.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    var status: Bool
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(.system(size: 18, weight: .bold))
            .foregroundColor(status ? .white : Color(.darkGray))
            .padding()
            .frame(maxWidth: .infinity, alignment: .center)
            .customBackground(color: status ? .main : .background)
            .padding()
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .opacity(configuration.isPressed ? 0.8 : 1.0)
    }
}
