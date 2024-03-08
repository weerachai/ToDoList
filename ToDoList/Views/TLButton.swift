//
//  TLButton.swift
//  ToDoList
//
//  Created by Weerachai Anotaipaiboon on 3/8/24.
//

import SwiftUI

struct TLButton: View {
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
                    .foregroundColor(.white)
                    .bold()
                    .padding(5)
            }
        }
    }
}
struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(
            title: "Button",
            background: .blue,
            action: {}
        )
    }
}
