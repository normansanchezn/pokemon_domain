//
//  GetPokemonUserUseCase.swift
//  pokemon_domain
//
//  Created by Norman Sánchez on 27/03/26.
//

import Foundation
import pokemon_shared

public struct GetPokemonUserUseCaseImpl: GetPokemonUserUseCase {
    
    private let userRepository: UserRepository
    
    public init(userRepository: UserRepository) {
        self.userRepository = userRepository
    }
    
    public func execute() async throws -> PokemonUser {
        try await userRepository.getUser()
    }
}
