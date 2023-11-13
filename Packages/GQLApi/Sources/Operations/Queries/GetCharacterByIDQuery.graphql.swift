// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetCharacterByIDQuery: GraphQLQuery {
  public static let operationName: String = "GetCharacterByID"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetCharacterByID($id: ID!) { character(id: $id) { __typename id status name species image gender type episode { __typename id name episode } location { __typename id name type } origin { __typename id name } } }"#
    ))

  public var id: ID

  public init(id: ID) {
    self.id = id
  }

  public var __variables: Variables? { ["id": id] }

  public struct Data: GQLApi.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GQLApi.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("character", Character?.self, arguments: ["id": .variable("id")]),
    ] }

    /// Get a specific character by ID
    public var character: Character? { __data["character"] }

    /// Character
    ///
    /// Parent Type: `Character`
    public struct Character: GQLApi.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GQLApi.Objects.Character }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", GQLApi.ID?.self),
        .field("status", String?.self),
        .field("name", String?.self),
        .field("species", String?.self),
        .field("image", String?.self),
        .field("gender", String?.self),
        .field("type", String?.self),
        .field("episode", [Episode?].self),
        .field("location", Location?.self),
        .field("origin", Origin?.self),
      ] }

      /// The id of the character.
      public var id: GQLApi.ID? { __data["id"] }
      /// The status of the character ('Alive', 'Dead' or 'unknown').
      public var status: String? { __data["status"] }
      /// The name of the character.
      public var name: String? { __data["name"] }
      /// The species of the character.
      public var species: String? { __data["species"] }
      /// Link to the character's image.
      /// All images are 300x300px and most are medium shots or portraits since they are intended to be used as avatars.
      public var image: String? { __data["image"] }
      /// The gender of the character ('Female', 'Male', 'Genderless' or 'unknown').
      public var gender: String? { __data["gender"] }
      /// The type or subspecies of the character.
      public var type: String? { __data["type"] }
      /// Episodes in which this character appeared.
      public var episode: [Episode?] { __data["episode"] }
      /// The character's last known location
      public var location: Location? { __data["location"] }
      /// The character's origin location
      public var origin: Origin? { __data["origin"] }

      /// Character.Episode
      ///
      /// Parent Type: `Episode`
      public struct Episode: GQLApi.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GQLApi.Objects.Episode }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", GQLApi.ID?.self),
          .field("name", String?.self),
          .field("episode", String?.self),
        ] }

        /// The id of the episode.
        public var id: GQLApi.ID? { __data["id"] }
        /// The name of the episode.
        public var name: String? { __data["name"] }
        /// The code of the episode.
        public var episode: String? { __data["episode"] }
      }

      /// Character.Location
      ///
      /// Parent Type: `Location`
      public struct Location: GQLApi.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GQLApi.Objects.Location }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", GQLApi.ID?.self),
          .field("name", String?.self),
          .field("type", String?.self),
        ] }

        /// The id of the location.
        public var id: GQLApi.ID? { __data["id"] }
        /// The name of the location.
        public var name: String? { __data["name"] }
        /// The type of the location.
        public var type: String? { __data["type"] }
      }

      /// Character.Origin
      ///
      /// Parent Type: `Location`
      public struct Origin: GQLApi.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GQLApi.Objects.Location }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", GQLApi.ID?.self),
          .field("name", String?.self),
        ] }

        /// The id of the location.
        public var id: GQLApi.ID? { __data["id"] }
        /// The name of the location.
        public var name: String? { __data["name"] }
      }
    }
  }
}
