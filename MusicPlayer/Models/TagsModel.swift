//
//  TagsModel.swift
//  MusicPlayer
//
//  Created by Damir Tansykov on 02.05.2024.
//

import SwiftUI

struct TagModel: Identifiable {
    var id: UUID = .init()
    var tag: String
}

var sampleTagList: [TagModel] = [
    TagModel(tag: "Romance"),
    TagModel(tag: "Feel Good"),
    TagModel(tag: "Podcasts"),
    TagModel(tag: "Party"),
    TagModel(tag: "Relax"),
    TagModel(tag: "Commute"),
    TagModel(tag: "Workout"),
    TagModel(tag: "Sad"),
    TagModel(tag: "Focus"),
]
