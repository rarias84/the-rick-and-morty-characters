//
//  CharacterListItemView.swift
//  TheRickAndMortyCharacters
//
//  Created by Reinaldo Arias on 11/11/23.
//

import SwiftUI
import GQLApi

struct CharacterListItemView: View {
    // MARK: - Properties
    var viewModel: CharacterSummary?
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 8) {
                Text("Mango cluster princess")
                    .font(.title2)
                    .lineLimit(1)
                    .fontWeight(.heavy)
                    .foregroundStyle(.white)
                Group {
                    Text("Species: ")
                        .fontWeight(.bold)
                        .foregroundStyle(.white) +
                    Text(viewModel?.species ?? "")
                        .foregroundStyle(.black)
                }
                Group {
                    Text("Status: ")
                        .fontWeight(.bold)
                        .foregroundStyle(.white) +
                    Text(viewModel?.status ?? "")
                        .foregroundStyle(.black)
                }
            }
            .padding(.leading, -50)
            .padding(.vertical, 3)
            .frame(width: 300, height: 135, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [Color("BlueMedium"), Color("BlueLight")]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(12)
          
            AsyncImage(url: URL(string: viewModel?.image ?? "")) { phase in
                if let image = phase.image {
                    image.imageModifier()
                } else {
                    Image(systemName: "photo.artframe.circle")
                        .iconModifier()
                }
            }
            .frame(width: 66, height: 66, alignment: .center)
            .clipShape(Circle())
            .background(
              Circle()
                .fill(Color.white)
                .frame(width: 74, height: 74, alignment: .center)
            )
            .background(
              Circle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color("BlueMedium"), Color("BlueLight")]), startPoint: .trailing, endPoint: .leading))
                .frame(width: 82, height: 82, alignment: .center)
            )
            .background(
              Circle()
                .fill(Color.white)
                .frame(width: 90, height: 90, alignment: .center)
            )
            .offset(x: -150)
        }
        .fixedSize(horizontal: true, vertical: false)
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
