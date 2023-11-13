//
//  CharactersListViewModel.swift
//  TheRickAndMortyCharacters
//
//  Created by Reinaldo Arias on 12/11/23.
//

import Foundation
import Apollo
import GQLApi

// TODO: - Create mapper to map graphql model to decodable model and to not import GQLApi in views
@MainActor
final class CharactersListViewModel: ObservableObject {
    // MARK: - Properties
    @Published public var characters: [CharacterSummary]?

    public private(set) var totalPages: Int?
    public private(set) var totalCharacters: Int?
    
    public var currentPage = 1 {
        didSet {
            getCharacters()
        }
    }
    
    public var shouldShowNextPage: Bool {
        if characters?.isEmpty == false, let totalPages = totalPages, currentPage < totalPages {
            return true
        }
        return false
    }
    
    // MARK: - Methods
    
    func getCharacters() {
        let fetchedPage = currentPage
        
        Network.shared.apollo.fetch(query: GetAllCharactersQuery(page: GraphQLNullable<Int>(integerLiteral: currentPage))) { [weak self] response in
            switch response {
            case .success(let result):
                print("Success! Result: \(result)")
                
                self?.totalPages = result.data?.characters?.info?.pages
                self?.totalCharacters = result.data?.characters?.info?.count
                
                if fetchedPage > 1 {
                    if let newCharacters = result.data?.characters?.results?.compactMap({ $0?.fragments.characterSummary }) {
                        self?.characters?.append(contentsOf: newCharacters)
                    }
                } else {
                    self?.characters = result.data?.characters?.results?.compactMap { $0?.fragments.characterSummary }
                }
            case .failure(let error):
                print("Failure! Error: \(error)")
                self?.characters = []
            }
        }
    }
}
