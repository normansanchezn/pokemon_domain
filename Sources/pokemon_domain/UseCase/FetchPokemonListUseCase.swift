//
//  FetchPokemonList.swift
//  pokemon_domain
//
//  Created by Norman Sánchez on 25/03/26.
//

import Foundation
import pokemon_shared

public protocol FetchPokemonListUseCase: Sendable {
    func execute(limit: Int, offset: Int) async throws -> [Pokemon]
}
