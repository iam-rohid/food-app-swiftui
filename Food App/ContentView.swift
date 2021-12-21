//
//  ContentView.swift
//  Food App
//
//  Created by Rohid on 22/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            CategoryListView(viewModel: CategoryListViewModel())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
