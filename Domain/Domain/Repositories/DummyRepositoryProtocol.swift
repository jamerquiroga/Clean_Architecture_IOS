//
//  DummyRepositoryProtocol.swift
//  Domain
//
//  Created by Daniel Aragon Ore on 3/19/19.
//  Copyright © 2019 bcp. All rights reserved.
//

import Foundation
public protocol DummyRepositoryProtocol{
    
    func getPackagesList(handler: @escaping ([String]?, Error?) -> (Void))
    
    func getProgrammingLanguageList(handler: @escaping ([String]?, Error?) -> (Void))
}
