//
//  CategoryItemView.swift
//  Food App
//
//  Created by Rohid on 22/12/21.
//

import SwiftUI
import Kingfisher

struct CategoryItemView: View {
    let category: Category
    var body: some View {
        HStack{
            KFImage(URL(string: category.thumbnailUrl))
                .resizable()
                .frame(width: 32, height: 32)
                .scaledToFill()
            Text(category.name)
        }
    }
}
