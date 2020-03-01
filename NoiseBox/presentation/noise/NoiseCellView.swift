//
//  NoiseCellView.swift
//  NoiseBox
//
//  Created by Kévin Esprit on 01/03/2020.
//  Copyright © 2020 Kesprit. All rights reserved.
//

import SwiftUI
import AVFoundation

struct NoiseCellView: View {
    let noise: NoiseMedia
    private let toto = Toto()
    
    var body: some View {
        Button(action: {
            self.toto.play(soundName: self.noise.filename)
        }) {
            Text(noise.title)
        }
    }
}

struct NoiseCellView_Previews: PreviewProvider {
    static var previews: some View {
        NoiseCellView(noise: datas.first!)
    }
}


class Toto {
    private var player: AVPlayer!
    
    func play(soundName: String) {
        let path = Bundle.main.path(forResource: soundName, ofType:"mp3")!
        let url = URL(fileURLWithPath: path)

        player = AVPlayer(url: url)
        try? AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
        try? AVAudioSession.sharedInstance().setActive(true)
        player.play()
    }
}
