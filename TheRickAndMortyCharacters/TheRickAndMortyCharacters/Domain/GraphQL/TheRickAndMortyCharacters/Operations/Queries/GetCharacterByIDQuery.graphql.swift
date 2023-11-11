// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension TheRickAndMortyCharacters {
  class GetCharacterByIDQuery: GraphQLQuery {
    static let operationName: String = "GetCharacterByID"
    static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query GetCharacterByID($id: ID!) { character(id: $id) { __typename ...CharacterDetail } }"#,
        fragments: [CharacterDetail.self]
      ))

    public var id: ID

    public init(id: ID) {
      self.id = id
    }

    public var __variables: Variables? { ["id": id] }

    struct Data: TheRickAndMortyCharacters.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { TheRickAndMortyCharacters.Objects.Query }
      static var __selections: [ApolloAPI.Selection] { [
        .field("character", Character?.self, arguments: ["id": .variable("id")]),
      ] }

      /// Get a specific character by ID
      var character: Character? { __data["character"] }

      /// Character
      ///
      /// Parent Type: `Character`
      struct Character: TheRickAndMortyCharacters.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: ApolloAPI.ParentType { TheRickAndMortyCharacters.Objects.Character }
        static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .fragment(CharacterDetail.self),
        ] }

        /// The id of the character.
        var id: TheRickAndMortyCharacters.ID? { __data["id"] }
        /// The name of the character.
        var name: String? { __data["name"] }
        /// Link to the character's image.
        /// All images are 300x300px and most are medium shots or portraits since they are intended to be used as avatars.
        var image: String? { __data["image"] }
        /// The gender of the character ('Female', 'Male', 'Genderless' or 'unknown').
        var gender: String? { __data["gender"] }
        /// The status of the character ('Alive', 'Dead' or 'unknown').
        var status: String? { __data["status"] }
        /// The species of the character.
        var species: String? { __data["species"] }
        /// The type or subspecies of the character.
        var type: String? { __data["type"] }
        /// The character's origin location
        var origin: CharacterDetail.Origin? { __data["origin"] }
        /// Episodes in which this character appeared.
        var episode: [CharacterDetail.Episode?] { __data["episode"] }
        /// The character's last known location
        var location: CharacterDetail.Location? { __data["location"] }

        struct Fragments: FragmentContainer {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          var characterDetail: CharacterDetail { _toFragment() }
        }
      }
    }
  }

}