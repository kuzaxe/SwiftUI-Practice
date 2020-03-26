//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Raj Pandya on 2020-03-24.
//  Copyright © 2020 Raj Pandya. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var dice1: Int = Int.random(in: 1...6)
    @State var dice2: Int = Int.random(in: 1...6)
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: self.dice1)
                    DiceView(n: self.dice2)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.dice1 = Int.random(in: 1...6)
                    self.dice2 = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
        }
    }
}

struct DiceView: View {

    let n: Int

    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding(.horizontal)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
