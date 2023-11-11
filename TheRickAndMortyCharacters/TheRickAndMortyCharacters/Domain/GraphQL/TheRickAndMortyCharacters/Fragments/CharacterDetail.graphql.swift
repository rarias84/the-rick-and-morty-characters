// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension TheRickAndMortyCharacters {
  struct CharacterDetail: TheRickAndMortyCharacters.SelectionSet, Fragment {
    static var fragmentDefinition: StaticString {
      #"fragment CharacterDetail on Character { __typename id name image gender status species type origin { __typename id } episode { __typename id name } location { __typename id } }"#
    }

    let __data: DataDict
    init(_dataDict: DataDict) { __data = _dataDict }

    static var __parentType: ApolloAPI.ParentType { TheRickAndMortyCharacters.Objects.Character }
    static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("id", TheRickAndMortyCharacters.ID?.self),
      .field("name", String?.self),
      .field("image", String?.self),
      .field("gender", String?.self),
      .field("status", String?.self),
      .field("species", String?.self),
      .field("type", String?.self),
      .field("origin", Origin?.self),
      .field("episode", [Episode?].self),
      .field("location", Location?.self),
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
    var origin: Origin? { __data["origin"] }
    /// Episodes in which this character appeared.
    var episode: [Episode?] { __data["episode"] }
    /// The character's last known location
    var location: Location? { __data["location"] }

    /// Origin
    ///
    /// Parent Type: `Location`
    struct Origin: TheRickAndMortyCharacters.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { TheRickAndMortyCharacters.Objects.Location }
      static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", TheRickAndMortyCharacters.ID?.self),
      ] }

      /// The id of the location.
      var id: TheRickAndMortyCharacters.ID? { __data["id"] }
    }

    /// Episode
    ///
    /// Parent Type: `Episode`
    struct Episode: TheRickAndMortyCharacters.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { TheRickAndMortyCharacters.Objects.Episode }
      static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", TheRickAndMortyCharacters.ID?.self),
        .field("name", String?.self),
      ] }

      /// The id of the episode.
      var id: TheRickAndMortyCharacters.ID? { __data["id"] }
      /// The name of the episode.
      var name: String? { __data["name"] }
    }

    /// Location
    ///
    /// Parent Type: `Location`
    struct Location: TheRickAndMortyCharacters.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { TheRickAndMortyCharacters.Objects.Location }
      static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", TheRickAndMortyCharacters.ID?.self),
      ] }

      /// The id of the location.
      var id: TheRickAndMortyCharacters.ID? { __data["id"] }
    }
  }

}