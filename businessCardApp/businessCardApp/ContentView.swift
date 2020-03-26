//
//  ContentView.swift
//  businessCardApp
//
//  Created by Raj Pandya on 2020-03-23.
//  Copyright © 2020 Raj Pandya. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
        ZStack{
            Color(red: 0.69, green: 0.03, blue: 0.02)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("roscoe")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                
                
                Text("Raj Pandya")
                    .font(.custom("Boogaloo-Regular", size: 40))
                    .foregroundColor(.white)
                Text("Founder of Red Maple")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                    .padding(.bottom)
                Divider()
                    .padding(.bottom)
                InfoView(text: "+1 647 525 0440", imageName: "phone.fill")
                InfoView(text: "raj.pandya@outlook.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
