//
//  CharactersListView.swift
//  TheRickAndMortyCharacters
//
//  Created by Reinaldo Arias on 11/11/23.
//

import SwiftUI

struct CharactersListView: View {
    // MARK: - Properties
    @StateObject private var viewModel = CharactersListViewModel()
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.characters ?? [], id: \.id) { character in
                    ZStack {
                        NavigationLink(destination: CharacterDetailView(characterId: character.id ?? "")) {
                            EmptyView()
                        }.opacity(0.0)
                        CharacterListItemView(viewModel: character)
                            .padding(.leading, 20)
                    }
                }
                .listRowSeparator(.hidden)
                if viewModel.shouldShowNextPage {
                    loadNextPageView
                }
            }
            .padding()
            .listStyle(PlainListStyle())
            .navigationTitle("Characters")
            .task {
                viewModel.getCharacters()
            }
        }
    }
    
    private var loadNextPageView: some View {
        HStack {
            Spacer()
            VStack {
                ProgressView()
                Text("Loading next page...")
            }
            Spacer()
        }
        .task {
            viewModel.currentPage += 1
        }
    }
}

#Preview {
    CharactersListView()
}

