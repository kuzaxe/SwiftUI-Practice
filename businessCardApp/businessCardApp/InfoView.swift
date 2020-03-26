//
//  InfoView.swift
//  businessCardApp
//
//  Created by Raj Pandya on 2020-03-23.
//  Copyright © 2020 Raj Pandya. All rights reserved.
//

import SwiftUI


struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(
                HStack {
                    Image(systemName: "\(imageName)")
                        .foregroundColor(Color.green)
                    Text("\(text)").foregroundColor(Color.black)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+1 647 525 0440", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
