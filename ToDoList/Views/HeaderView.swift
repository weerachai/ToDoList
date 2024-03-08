//
//  HeaderView.swift
//  ToDoList
//
//  Created by Weerachai Anotaipaiboon on 3/8/24.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
            VStack {
                Text(title)
                    .font(.system(size: 45))
                    .bold()
                Text(subtitle)
                    .font(.system(size: 25))
            }
            .foregroundColor(.white)
            .padding(.top, 70)
        }
        .frame(width: UIScreen.main.bounds.width * 2, height: 300)
        .offset(y: -150)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(
            title: "Title",
            subtitle: "subtitle",
            angle: 15,
            background: .pink
        )
    }
}
