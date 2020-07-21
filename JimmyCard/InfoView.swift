//
//  InfoView.swift
//  JimmyCard
//
//  Created by Jimmy Ghelani on 2020-07-21.
//

import SwiftUI
struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50, alignment: .center)
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text)
                        .foregroundColor(Color("Info Color"))
                }
            )
            .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
