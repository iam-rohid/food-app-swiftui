//
//  CategoryListView.swift
//  Food App
//
//  Created by Rohid on 22/12/21.
//

import SwiftUI
import Kingfisher

struct CategoryListView: View {
    @ObservedObject var viewModel: CategoryListViewModel
    var body: some View {
        List(viewModel.categories){category in
            NavigationLink {
                MealListView(category: category, viewModel: MealListViewModel())
            } label: {
                CategoryItemView(category: category)
            }
        }.onAppear  {
            Task.init(priority: TaskPriority.high, operation: {
                await viewModel.fetch()
            })
        }.navigationTitle("Categories")
    }
}

struct CategoryListView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryListView(viewModel: CategoryListViewModel())
    }
}
