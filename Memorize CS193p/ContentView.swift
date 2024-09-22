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
    @State var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 16 )
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 8)
                    .foregroundColor(.orange)
                Text("🐵")
                    .font(.largeTitle)
            } else {
                base.fill(.orange)
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
        .padding(4)
    }
}

#Preview {
    ContentView()
}
