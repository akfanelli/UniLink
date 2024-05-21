//
//  SubmitButton.swift
//  UniLink
//
//  Created by Annie Fanelli on 5/17/24.
//

import SwiftUI

struct SubmitButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

#Preview {
    SubmitButton(title: "Value", background: .green) {
        // Action
    }
}
