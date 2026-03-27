//
//  GetPokemonDetailsUseCase.swift
//  pokemon_domain
//
//  Created by Norman Sánchez on 26/03/26.
//

import Foundation
import pokemon_shared

public protocol GetPokemonDetailsUseCase: Sendable {
    func execute(pokemonID: Int) async throws -> DetailsPokemon
}
