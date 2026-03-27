//
//  PokemonRepository.swift
//  pokemon_domain
//
//  Created by Norman Sánchez on 25/03/26.
//

import Foundation
import pokemon_shared

public protocol PokemonRepository: Sendable {
    func fetchPokemonList(limit: Int, offset: Int) async throws -> [Pokemon]
    func getPokemonDetails(pokemonID: Int) async throws -> DetailsPokemon
}
