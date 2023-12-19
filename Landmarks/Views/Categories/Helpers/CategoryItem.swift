    //
    //  CategoryItem.swift
    //  Landmarks
    //
    //  Created by Bugra Aslan on 19.12.2023.
    //

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .resizable()
                .frame(width: 155, height: 155)
                .clipShape(.rect(cornerRadius: 5.0))
            Text(landmark.name)
                .font(.caption)
        }
        // I don't think putting .padding with .leading here is a good idea. Because we can use spacing
        .padding(.leading, 15)
    }
}

#Preview {
    CategoryItem(landmark: ModelData().landmarks[0])
}
