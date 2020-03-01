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
    private let player = Mp3Player()
    
    var body: some View {
        Button(action: {
            self.player.play(soundName: self.noise.filename)
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


class Mp3Player {
    private var player: AVPlayer!
    private let typeOfFile = "mp3"
    
    func play(soundName: String) {
        guard let path = Bundle.main.path(forResource: soundName, ofType:typeOfFile) else {
            return
        }
//        let path = Bundle.main.path(forResource: soundName, ofType:typeOfFile)!
        let url = URL(fileURLWithPath: path)

        player = AVPlayer(url: url)
        try? AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
        try? AVAudioSession.sharedInstance().setActive(true)
        player.play()
    }
}
