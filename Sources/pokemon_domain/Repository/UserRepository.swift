//
//  UserRepository.swift
//  pokemon_domain
//
//  Created by Norman Sánchez on 27/03/26.
//

import Foundation
import pokemon_shared

public protocol UserRepository {
    func getUser() async throws -> PokemonUser
}
