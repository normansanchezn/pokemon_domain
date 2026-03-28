//
//  GetPokemonUserUseCase.swift
//  pokemon_domain
//
//  Created by Norman Sánchez on 27/03/26.
//

import Foundation
import pokemon_shared

public protocol GetPokemonUserUseCase {
    func execute() async throws -> PokemonUser
}
