//
//  CharacterDetailView.swift
//  TheRickAndMortyCharacters
//
//  Created by Reinaldo Arias on 11/11/23.
//

import SwiftUI
import GQLApi

struct CharacterDetailView: View {
    private enum Status: String {
        case alive
        case dead
    }
    
    @StateObject private var viewModel = CharacterDetailViewModel()

    private var characterId: String

    init(characterId: String) {
        self.characterId = characterId
    }
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ZStack {
                        VStack(alignment: .center) {
                            AsyncImage(url: URL(string: viewModel.character?.image ?? ""),
                                       content: { image in
                                        image
                                            .resizable()
                                            .scaledToFill()
                                            .aspectRatio(contentMode: .fit)
                                        },
                                       placeholder: {
                                            ProgressView()
                                        }
                            )
                            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 8, y: 8)

                            HStack(spacing: 0) {
                                Text("Status: ")
                                    .font(.title)
                                    .fontWeight(.heavy)
                                getStatusIcon(viewModel.character?.status ?? "")
                                    .font(.title)
                            }
                            .offset(y: -25)
                    }
                }
                
                VStack(alignment: .leading, spacing: 20) {
                    Text(viewModel.character?.name ?? "")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.blue)
                    Group {
                        Text("Gender: ")
                            .fontWeight(.bold)
                            .foregroundColor(.black) +
                        Text(viewModel.character?.gender ?? "")
                    }
                    Group {
                        Text("Origen: ")
                            .fontWeight(.bold)
                            .foregroundColor(.black) +
                        Text(viewModel.character?.origin?.name?.capitalized ?? "")
                    }
                    Group {
                        Text("Species: ")
                            .fontWeight(.bold)
                            .foregroundColor(.black) +
                        Text(viewModel.character?.species ?? "")
                    }
                    Group {
                        Text("Type: ")
                            .fontWeight(.bold)
                            .foregroundColor(.black) +
                        Text(viewModel.character?.type ?? "")
                    }
                    Group {
                        Text("Location: ")
                            .fontWeight(.bold)
                            .foregroundColor(.black) +
                        Text(viewModel.character?.location?.name ?? "")
                    }
                    if let episodes = viewModel.character?.episode {
                        EpisodeItemView(episodes: episodes.map { "\($0?.episode ?? "") - \($0?.name ?? "")" })
                    }
                }
                .padding(.horizontal, 20)
                .frame(maxWidth: 640, alignment: .center)
            }
            .navigationBarHidden(true)
          }
          .edgesIgnoringSafeArea(.top)
          .task {
              viewModel.getCharacterBy(id: characterId)
          }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    private func getStatusIcon(_ string: String) -> Text {
        switch string.lowercased() {
        case Status.alive.rawValue: return Text("Alive 😇")
        case Status.dead.rawValue: return Text("Dead ☠️")
        default: return Text("Unknown 🤷‍♂️")
        }
    }
}

#Preview {
    CharacterDetailView(characterId: "2")
}
