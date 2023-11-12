//
//  CharactersListView.swift
//  TheRickAndMortyCharacters
//
//  Created by Reinaldo Arias on 11/11/23.
//

import SwiftUI

struct CharactersListView: View {
    // MARK: - Properties
    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(1..<10) { _ in
                    ZStack {
                        NavigationLink(destination: CharacterDetailView()) {
                            EmptyView()
                        }.opacity(0.0)
                        CharacterListItemView()
                            .padding(.leading, 20)
                    }
                }
                .listRowSeparator(.hidden)
            }
            .padding()
            .listStyle(PlainListStyle())
            .navigationTitle("Characters")
        }
    }
}

#Preview {
    CharactersListView()
}

