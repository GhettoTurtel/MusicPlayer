//
//  ContentView.swift
//  MusicPlayer
//
//  Created by Damir Tansykov on 02.05.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var expandSheet = false
    @Namespace private var animation
    
    @StateObject var songManager = SongManager()

    var body: some View {
        TabView {
            // Bottom Bar
            Home()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .environmentObject(songManager)
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(.ultraThickMaterial, for: .tabBar)
            
        
            Search()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
                .environmentObject(songManager)
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(.ultraThickMaterial, for: .tabBar)
            
            Text("playlists")
                .tabItem {
                    Image(systemName: "play.rectangle.on.rectangle")
                    Text("Playlists")
                }
                .environmentObject(songManager)
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(.ultraThickMaterial, for: .tabBar)
            
        }
        .tint(.white)
        .safeAreaInset(edge: .bottom) {
            // Custom Bottom Sheet
            // If no song selected the list hide automatically
            if !songManager.song.title.isEmpty {
                CustomBottomSheet()
            }
        }
        .overlay {
            if expandSheet {
                //music player expended sheet
                MusicView(expandSheet: $expandSheet, animation: animation)
                    .environmentObject(songManager)
            }
        }
        
    }
    
    @ViewBuilder
    func CustomBottomSheet() -> some View {
        ZStack {
            if expandSheet {
                Rectangle()
                    .fill(.clear)
            } else {
                Rectangle()
                    .fill(.ultraThickMaterial)
                    .overlay {
                        // Music Info
                        MusicInfo(expandSheet: $expandSheet, animation: animation)
                            .environmentObject(songManager)
                    }
                    .clipShape(.rect(topLeadingRadius: 30, topTrailingRadius: 30))
                    .matchedGeometryEffect(id: "BACKGROUNDVIEW", in: animation)
            }
        }
        .frame(height: 80)
        .offset(y: -49)
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
