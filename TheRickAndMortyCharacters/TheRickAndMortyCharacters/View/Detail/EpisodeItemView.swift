//
//  EpisodeItemView.swift
//  TheRickAndMortyCharacters
//
//  Created by Reinaldo Arias on 11/11/23.
//

import SwiftUI

struct EpisodeItemView: View {
    // MARK: - PROPERTIES
    var episodes: [String] = []
    
    // MARK: - BODY

    var body: some View {
        GroupBox() {
            DisclosureGroup("Episodes") {
                ForEach(episodes, id: \.self) { episode in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "movieclapper")
                            Text(episode)
                        }
                        .foregroundColor(.blue)
                        .font(Font.system(.body).bold())
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    EpisodeItemView(episodes: ["S1", "S2"])
}
