//
//  UseCaese.swift
//  Domain
//
//  Created by Daniel Aragon Ore on 3/18/19.
//  Copyright © 2019 bcp. All rights reserved.
//

import Foundation
public protocol DummyUseCase{
//    func getJojoList(handler: @escaping (PackageResponse?, Error?) -> (Void))
    func getJojoList(handler: @escaping ([String]?, Error?) -> (Void))
}
