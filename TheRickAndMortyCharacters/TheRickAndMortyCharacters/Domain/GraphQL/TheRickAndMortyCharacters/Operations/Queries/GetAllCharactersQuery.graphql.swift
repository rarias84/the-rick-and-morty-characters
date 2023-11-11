// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension TheRickAndMortyCharacters {
  class GetAllCharactersQuery: GraphQLQuery {
    static let operationName: String = "GetAllCharacters"
    static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query GetAllCharacters($page: Int) { characters(page: $page) { __typename info { __typename count pages next prev } results { __typename ...CharacterSummary } } }"#,
        fragments: [CharacterSummary.self]
      ))

    public var page: GraphQLNullable<Int>

    public init(page: GraphQLNullable<Int>) {
      self.page = page
    }

    public var __variables: Variables? { ["page": page] }

    struct Data: TheRickAndMortyCharacters.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { TheRickAndMortyCharacters.Objects.Query }
      static var __selections: [ApolloAPI.Selection] { [
        .field("characters", Characters?.self, arguments: ["page": .variable("page")]),
      ] }

      /// Get the list of all characters
      var characters: Characters? { __data["characters"] }

      /// Characters
      ///
      /// Parent Type: `Characters`
      struct Characters: TheRickAndMortyCharacters.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: ApolloAPI.ParentType { TheRickAndMortyCharacters.Objects.Characters }
        static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("info", Info?.self),
          .field("results", [Result?]?.self),
        ] }

        var info: Info? { __data["info"] }
        var results: [Result?]? { __data["results"] }

        /// Characters.Info
        ///
        /// Parent Type: `Info`
        struct Info: TheRickAndMortyCharacters.SelectionSet {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          static var __parentType: ApolloAPI.ParentType { TheRickAndMortyCharacters.Objects.Info }
          static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("count", Int?.self),
            .field("pages", Int?.self),
            .field("next", Int?.self),
            .field("prev", Int?.self),
          ] }

          /// The length of the response.
          var count: Int? { __data["count"] }
          /// The amount of pages.
          var pages: Int? { __data["pages"] }
          /// Number of the next page (if it exists)
          var next: Int? { __data["next"] }
          /// Number of the previous page (if it exists)
          var prev: Int? { __data["prev"] }
        }

        /// Characters.Result
        ///
        /// Parent Type: `Character`
        struct Result: TheRickAndMortyCharacters.SelectionSet {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          static var __parentType: ApolloAPI.ParentType { TheRickAndMortyCharacters.Objects.Character }
          static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .fragment(CharacterSummary.self),
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

          struct Fragments: FragmentContainer {
            let __data: DataDict
            init(_dataDict: DataDict) { __data = _dataDict }

            var characterSummary: CharacterSummary { _toFragment() }
          }
        }
      }
    }
  }

}