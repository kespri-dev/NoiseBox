//
//  NoiseListView.swift
//  NoiseBox
//
//  Created by Kévin Esprit on 01/03/2020.
//  Copyright © 2020 Kesprit. All rights reserved.
//

import SwiftUI
import AVFoundation

struct NoiseListView: View {
    var category: String
    
//    private var noises: [NoiseMedia] { datas.filter { $0.category == self.category }}
    
    var body: some View {
        List {
            
//            let noises = datas.filter { $0.category == self.category }
            return ForEach(datas.filter { $0.category == self.category }, id: \.self) { noise in
                NoiseCellView(noise: noise)
            }
        }
    }
}

struct NoiseListView_Previews: PreviewProvider {
    static var previews: some View {
        NoiseListView(category: "Raymond")
    }
}
