//
//  ContentView.swift
//  Memorize CS193p
//
//  Created by Rafael Garcia on 21/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }.padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 16 )
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 16 )
                    .strokeBorder(lineWidth: 8)
                    .foregroundColor(.orange)
                Text("🐵")
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 16 )
                    .foregroundColor(.orange)
            }
        }
        .padding(4)
    }
}

#Preview {
    ContentView()
}
