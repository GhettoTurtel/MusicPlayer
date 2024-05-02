//
//  SongsModel.swift
//  MusicPlayer
//
//  Created by Damir Tansykov on 02.05.2024.
//

import SwiftUI

// Now we create Songs Model List
struct SongsModel: Identifiable {
    var id: UUID = .init()
    var artist: String
    var audio_url: String
    var cover: String
    var title: String
    var isFavourite: Bool = false
}

// Demo List Of Songs
var sampleSongModel: [SongsModel] = [
    .init(artist: "Mnogoznaal", audio_url: "", cover: "msuic 2", title: "Kolhoznik"),
    .init(artist: "Bach", audio_url: "", cover: "music 3", title: "Bach"),
    .init(artist: "Metallica", audio_url: "", cover: "music 4", title: "Metallica"),
    .init(artist: "Imagine Dragons", audio_url: "", cover: "music 5", title: "Imagine Dragons"),
    .init(artist: "Shakira", audio_url: "", cover: "music 6", title: "Shakira"),
    .init(artist: "Mozart", audio_url: "", cover: "music 7", title: "Just Mozart"),
    .init(artist: "Qairat Nurtas", audio_url: "", cover: "music 1", title: "Qairosh"),
    .init(artist: "BBT", audio_url: "", cover: "music 3", title: "KARI"),
    .init(artist: "Nirvana", audio_url: "", cover: "music 5", title: "Something in the way"),
    .init(artist: "50 Cent", audio_url: "", cover: "https://i.scdn.co/image/ab67616d0000b27352d87d9044a2acf1a4e3cb4f", title: "50 cent less than dollar"),
    .init(artist: "Mickey", audio_url: "", cover: "msuic 2", title: "Distance Love"),
    .init(artist: "Amir G 777", audio_url: "", cover: "music 1", title: "VipQazaqMoney"),
]
