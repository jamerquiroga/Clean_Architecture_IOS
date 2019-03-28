//
//  Interactor.swift
//  Domain
//
//  Created by Daniel Aragon Ore on 3/18/19.
//  Copyright © 2019 bcp. All rights reserved.
//

import Foundation
public class DummyInteractor{
    
    private let dummyRepository: DummyRepositoryProtocol!
    
    public init(with repository: DummyRepositoryProtocol) {
        self.dummyRepository = repository
    }
}

extension DummyInteractor: DummyUseCase{
    
    public func getJojoList(handler: @escaping ([String]?, Error?) -> (Void)) {
        dummyRepository.getPackagesList { (response, error) -> (Void) in
            handler(response,error)
        }
    }
    
    public func getProgrammingLanguageList(handler: @escaping ([String]?, Error?) -> (Void)) {
        dummyRepository.getProgrammingLanguageList{ (response, error) -> (Void) in
            handler(response, error)
        }

    }
}
