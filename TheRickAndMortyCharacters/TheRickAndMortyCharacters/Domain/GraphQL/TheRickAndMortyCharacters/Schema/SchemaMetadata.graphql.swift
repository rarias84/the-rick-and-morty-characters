// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

protocol TheRickAndMortyCharacters_SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == TheRickAndMortyCharacters.SchemaMetadata {}

protocol TheRickAndMortyCharacters_InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == TheRickAndMortyCharacters.SchemaMetadata {}

protocol TheRickAndMortyCharacters_MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == TheRickAndMortyCharacters.SchemaMetadata {}

protocol TheRickAndMortyCharacters_MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == TheRickAndMortyCharacters.SchemaMetadata {}

extension TheRickAndMortyCharacters {
  typealias ID = String

  typealias SelectionSet = TheRickAndMortyCharacters_SelectionSet

  typealias InlineFragment = TheRickAndMortyCharacters_InlineFragment

  typealias MutableSelectionSet = TheRickAndMortyCharacters_MutableSelectionSet

  typealias MutableInlineFragment = TheRickAndMortyCharacters_MutableInlineFragment

  enum SchemaMetadata: ApolloAPI.SchemaMetadata {
    static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

    static func objectType(forTypename typename: String) -> ApolloAPI.Object? {
      switch typename {
      case "Query": return TheRickAndMortyCharacters.Objects.Query
      case "Characters": return TheRickAndMortyCharacters.Objects.Characters
      case "Info": return TheRickAndMortyCharacters.Objects.Info
      case "Character": return TheRickAndMortyCharacters.Objects.Character
      case "Location": return TheRickAndMortyCharacters.Objects.Location
      case "Episode": return TheRickAndMortyCharacters.Objects.Episode
      default: return nil
      }
    }
  }

  enum Objects {}
  enum Interfaces {}
  enum Unions {}

}