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
                ForEach(1..<3) { _ in
                    CharacterListItemView()
                }
            }
            .navigationTitle("Characters")
        }
    }
}

#Preview {
    CharactersListView()
}

