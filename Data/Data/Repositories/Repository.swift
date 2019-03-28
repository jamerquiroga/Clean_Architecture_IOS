//
//  Repository.swift
//  Data
//
//  Created by Daniel Aragon Ore on 3/18/19.
//  Copyright © 2019 bcp. All rights reserved.
//

import Foundation
import Domain

public class DummyRepository: DummyRepositoryProtocol{
    
//    var claroHogarAPI: ClaroHogarAPI
//    var dataStore: DataStoreRepositoryProtocol
    
    public init(){
//        self.claroHogarAPI = ClaroHogarAPI()
//        self.dataStore = DataStore()
    }
}

extension DummyRepository{
    public func getPackagesList(handler: @escaping ([String]?, Error?) -> (Void)) {
        handler(["jojo", "johnathan joestar", "joseph joestar", "jotaro kujo", "josuke higashikata", "jolyne kujo", "johnny joestar"], nil)
    }
    
    public func getProgrammingLanguageList(handler: @escaping ([String]?, Error?) -> (Void)){
        handler(["Java", "Kotlin", "Swift", "Dart", "C#", "C++"], nil)
    }
}
