//
//  CategoryListView.swift
//  NoiseBox
//
//  Created by Kévin Esprit on 01/03/2020.
//  Copyright © 2020 Kesprit. All rights reserved.
//

import SwiftUI

struct CategoryListView: View {
    
    var body: some View {
        NavigationView {
            List {
                ForEach(categories, id: \.self) { category in
                    NavigationLink(destination: NoiseListView(category: category)) {
                        Text(category)
                    }
                }
                
            }.navigationBarTitle("Catégories")
        }
    }
}

struct CategoryListView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryListView()
    }
}
