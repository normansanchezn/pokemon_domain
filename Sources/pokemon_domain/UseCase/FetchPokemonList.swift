//
//  FetchPokemonList.swift
//  pokemon_domain
//
//  Created by Norman Sánchez on 25/03/26.
//

import Foundation
import pokemon_shared

public protocol FetchPokemonList {
    func execute() async throws -> [Pokemon]
}
