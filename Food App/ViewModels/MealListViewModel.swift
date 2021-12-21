//
//  MeelListViewModel.swift
//  Food App
//
//  Created by Rohid on 22/12/21.
//

import Foundation

final class MealListViewModel: ObservableObject {
    @Published var meals: [Meal] = []
    
    let session = URLSession.shared
    
    func fetch(category: String) async {
        guard let (data, _) =  try? await session.data(from: URL(string: "https://www.themealdb.com/api/json/v1/1/filter.php?c=Seafood")!) else {
            return
        }
        
        guard let meals = try? JSONDecoder().decode(Meals.self, from: data) else{
            return;
        }
        self.meals = meals.meals
    }
}
