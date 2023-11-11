//
//  CharacterListItemView.swift
//  TheRickAndMortyCharacters
//
//  Created by Reinaldo Arias on 11/11/23.
//

import SwiftUI

struct CharacterListItemView: View {
    // MARK: - Properties
    // MARK: - Body
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: "https://rickandmortyapi.com/api/character/avatar/1.jpeg")) { phase in
                if let image = phase.image {
                    image.imageModifier()
                } else {
                    Image(systemName: "photo.artframe.circle")
                        .iconModifier()
                }
            }
            .scaledToFill()
            .frame(width: 90, height: 90)
            .clipShape(
                RoundedRectangle(cornerRadius: 12)
            )
            
            VStack(alignment: .leading, spacing: 8) {
                Text("name" ?? "Loading...")
                    .font(.title2)
                    .lineLimit(1)
                    .fontWeight(.heavy)
                    .foregroundStyle(.blue)
                    .redacted(reason: "character.name" == nil ? .placeholder : [])
                Group {
                        Text("Species: ")
                            .fontWeight(.bold)
                            .foregroundStyle(.blue) +
                        Text("species" ?? "")
                            .foregroundStyle(.black)
                }
                Group {
                        Text("Status: ")
                            .fontWeight(.bold)
                            .foregroundStyle(.blue) +
                        Text("status" ?? "")
                            .foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    CharacterListItemView()
}

private extension Image {
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func iconModifier() -> some View {
        self
            .imageModifier()
            .frame(maxWidth: 128)
            .foregroundStyle(.blue)
            .opacity(0.5)
    }
}
