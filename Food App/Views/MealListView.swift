//
//  MeelListView.swift
//  Food App
//
//  Created by Rohid on 22/12/21.
//

import SwiftUI

struct MealListView: View {
    let category: Category
    @ObservedObject var viewModel: MealListViewModel
    var body: some View {
        List(viewModel.meals){meal in
            Text(meal.name)
        }.onAppear {
            Task.init(priority: TaskPriority.high, operation: {
                await viewModel.fetch(category: category.name)
            })
        }.navigationTitle(category.name)
    }
}
