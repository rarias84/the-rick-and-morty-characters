// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension TheRickAndMortyCharacters {
  struct CharacterSummary: TheRickAndMortyCharacters.SelectionSet, Fragment {
    static var fragmentDefinition: StaticString {
      #"fragment CharacterSummary on Character { __typename id status name species image }"#
    }

    let __data: DataDict
    init(_dataDict: DataDict) { __data = _dataDict }

    static var __parentType: ApolloAPI.ParentType { TheRickAndMortyCharacters.Objects.Character }
    static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("id", TheRickAndMortyCharacters.ID?.self),
      .field("status", String?.self),
      .field("name", String?.self),
      .field("species", String?.self),
      .field("image", String?.self),
    ] }

    /// The id of the character.
    var id: TheRickAndMortyCharacters.ID? { __data["id"] }
    /// The status of the character ('Alive', 'Dead' or 'unknown').
    var status: String? { __data["status"] }
    /// The name of the character.
    var name: String? { __data["name"] }
    /// The species of the character.
    var species: String? { __data["species"] }
    /// Link to the character's image.
    /// All images are 300x300px and most are medium shots or portraits since they are intended to be used as avatars.
    var image: String? { __data["image"] }
  }

}