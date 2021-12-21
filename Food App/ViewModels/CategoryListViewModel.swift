//
//  CategoryListModelView.swift
//  Food App
//
//  Created by Rohid on 22/12/21.
//

import Foundation

final class CategoryListViewModel: ObservableObject {
    @Published var categories: [Category] = []
    
    let session = URLSession.shared
    
    func fetch() async {
        guard let (data, _) =  try? await session.data(from: URL(string: "https://www.themealdb.com/api/json/v1/1/categories.php")!) else {
            return
        }
        
        guard let categories = try? JSONDecoder().decode(Categories.self, from: data) else{
            return;
        }
        self.categories = categories.categories
    }
}
