//
//  SongManager.swift
//  MusicPlayer
//
//  Created by Damir Tansykov on 02.05.2024.
//

import SwiftUI

class SongManager: ObservableObject {
    @Published private(set) var song: SongsModel = SongsModel(artist: "", audio_url: "", cover: "", title: "")
    
    func playSong(song: SongsModel) {
        self.song = song
    }
}
