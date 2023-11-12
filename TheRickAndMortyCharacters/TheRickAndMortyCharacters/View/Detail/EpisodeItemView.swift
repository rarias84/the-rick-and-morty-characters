//
//  EpisodeItemView.swift
//  TheRickAndMortyCharacters
//
//  Created by Reinaldo Arias on 11/11/23.
//

import SwiftUI

struct EpisodeItemView: View {
    // MARK: - PROPERTIES

    // MARK: - BODY

    var body: some View {
        GroupBox() {
            DisclosureGroup("Episodes") {
                ForEach(0..<3, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "movieclapper")
                            Text("nutrients[item]")
                        }
                        .foregroundColor(.blue)
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text("fruit.nutrition[item]")
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

#Preview {
    EpisodeItemView()
}
