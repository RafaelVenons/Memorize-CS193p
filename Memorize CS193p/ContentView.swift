//
//  ContentView.swift
//  Memorize CS193p
//
//  Created by Rafael Garcia on 21/9/24.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["🐵", "🙈", "🙉", "🙊"]
    
    var body: some View {
        HStack{
            ForEach(emojis.indices, id: \.self){ index in
                CardView(content: emojis[index], isFaceUp: true)
            }
        }
        .padding()
    }
}

struct CardView: View {
    let content: String
    let base = RoundedRectangle(cornerRadius: 16 )
    @State var isFaceUp = false
    
    var body: some View {
        ZStack {
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 8)
                    .foregroundColor(.orange)
                Text(content)
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
