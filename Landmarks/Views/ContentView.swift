//
//  ContentView.swift
//  Landmarks
//
//  Created by Bugra Aslan on 14.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
                    .italic()
            }
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
