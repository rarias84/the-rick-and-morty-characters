//
//  CharacterDetailView.swift
//  TheRickAndMortyCharacters
//
//  Created by Reinaldo Arias on 11/11/23.
//

import SwiftUI

struct CharacterDetailView: View {
    private enum Status: String {
        case alive
        case dead
    }
    
    var body: some View {
        NavigationView {
          ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 10) {
              // HEADER
                ZStack {
                    VStack {
                        AsyncImage(url: URL(string: "https://rickandmortyapi.com/api/character/avatar/1.jpeg"))
                          .scaledToFit()
                          .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 8, y: 8)
                          .padding(.vertical, 20)
                                        
                        // HEADLINE
                        HStack(spacing: 0) {
                            Text("Status: ")
                              .font(.headline)
                            getStatusIcon("dead")
                                .font(.headline)
                        }
                        .offset(y: -20)
                    }
                }
                
                
              VStack(alignment: .leading, spacing: 20) {
                  // TITLE
                  Text("Name")
                      .font(.largeTitle)
                      .fontWeight(.heavy)
                      .foregroundColor(.blue)

                  // SUBHEADLINE
                  Text("Gender".uppercased())
                      .fontWeight(.bold)
                      .foregroundColor(.black)
                  
                  // SUBHEADLINE
                  Text("Origen".uppercased())
                      .fontWeight(.bold)
                      .foregroundColor(.black)
            
                  // SUBHEADLINE
                  Text("Species".uppercased())
                      .fontWeight(.bold)
                      .foregroundColor(.black)
                  
                  // SUBHEADLINE
                  Text("Type".uppercased())
                      .fontWeight(.bold)
                      .foregroundColor(.black)
            
                  // DESCRIPTION
                  Text("Location".uppercased())
                      .fontWeight(.bold)
                      .foregroundColor(.black)
                  
                  // EPISODES
                  EpisodeItemView()
              } //: VSTACK
              .padding(.horizontal, 20)
              .frame(maxWidth: 640, alignment: .center)
            } //: VSTACK
            .navigationBarTitle("name", displayMode: .inline)
            .navigationBarHidden(true)
          } //: SCROLL
          .edgesIgnoringSafeArea(.top)
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    private func getStatusIcon(_ string: String) -> Text {
        switch string {
        case Status.alive.rawValue: return Text("Alive 😇")
        case Status.dead.rawValue: return Text("Dead ☠️")
        default: return Text("Unknown 🤷‍♂️")
        }
    }
}

#Preview {
    CharacterDetailView()
}
