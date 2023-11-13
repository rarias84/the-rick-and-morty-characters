//
//  CharacterDetailViewModel.swift
//  TheRickAndMortyCharacters
//
//  Created by Reinaldo Arias on 12/11/23.
//

import Foundation
import Apollo
import GQLApi

@MainActor
final class CharacterDetailViewModel: ObservableObject {
    @Published public var character: GetCharacterByIDQuery.Data.Character?

    func getCharacterBy(id: String) {
        Network.shared.apollo.fetch(query: GetCharacterByIDQuery(id: id)) { [weak self] response in
            switch response {
            case .success(let result):
                print("Success! Result: \(result)")
                self?.character = result.data?.character
                
            case .failure(let error):
                print("Failure! Error: \(error)")
                self?.character = nil
            }
        }
    }
}

