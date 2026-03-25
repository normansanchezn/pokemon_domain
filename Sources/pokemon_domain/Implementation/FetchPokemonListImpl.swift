import Foundation
import pokemon_shared

public struct FetchPokemonListImpl: FetchPokemonList {
    private let pokemonRepository: PokemonRepository

    public init(pokemonRepository: PokemonRepository) {
        self.pokemonRepository = pokemonRepository
    }

    public func execute() async throws -> [Pokemon] {
        try await pokemonRepository.fetchPokemonList()
    }
}
