//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Bugra Aslan on 19.12.2023.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            // ScrollView(.horizontal, showsIndicators: true) {
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        CategoryItem(landmark: landmark)
                    }
                }
                // .padding(.bottom, 5)
                // if we want to use indicators we can just add a 5 point padding which solves the indicator being over the text :3
            }
        }
        .frame(height: 185)
        // .background(.gray)
        // for checking the frame size and other stuff, just for debug
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    
    return CategoryRow(
        categoryName: landmarks[0].category.rawValue,
        items: Array(landmarks.prefix(4))
    )
}
