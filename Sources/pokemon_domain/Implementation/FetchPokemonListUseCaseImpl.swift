import Foundation
import pokemon_shared

public struct FetchPokemonListUseCaseImpl: FetchPokemonListUseCase {
    private let pokemonRepository: PokemonRepository

    public init(pokemonRepository: PokemonRepository) {
        self.pokemonRepository = pokemonRepository
    }

    public func execute(limit: Int, offset: Int) async throws -> [Pokemon] {
        try await pokemonRepository.fetchPokemonList(limit: limit, offset: offset)
    }
}
