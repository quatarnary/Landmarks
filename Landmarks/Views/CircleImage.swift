//
//  CircleImage.swift
//  Landmarks
//
//  Created by Bugra Aslan on 15.12.2023.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var borderColor = Color.yellow
    var borderWidth = 6.0
    var shadowRadius = 7.0
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(borderColor, lineWidth: borderWidth)
            }
            .shadow(radius: shadowRadius)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
