//
//  GetPokemonDetailsUseCaseImpl.swift
//  pokemon_domain
//
//  Created by Norman Sánchez on 26/03/26.
//

import Foundation
import pokemon_shared

public struct GetPokemonDetailsUseCaseImpl: GetPokemonDetailsUseCase {
    
    private let pokemonRepository: PokemonRepository
    
    public init(pokemonRepository: PokemonRepository) {
        self.pokemonRepository = pokemonRepository
    }
    
    public func execute(pokemonID: Int) async throws -> DetailsPokemon {
        try await pokemonRepository.getPokemonDetails(pokemonID: pokemonID)
    }
}
