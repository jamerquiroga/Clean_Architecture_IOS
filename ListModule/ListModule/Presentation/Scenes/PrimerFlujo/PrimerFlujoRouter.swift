//
//  PrimerFlujoRouter.swift
//  Module
//
//  Created by Daniel Aragon Ore on 3/18/19.
//  Copyright (c) 2019 bcp. All rights reserved.
//

import UIKit

protocol PrimerFlujoRouterProtocol{
}

class PrimerFlujoRouter {
    
    weak var currentViewController:UIViewController?
    
    init(withView viewController:UIViewController) {
        self.currentViewController = viewController
    }
    
}

//MARK: PROTOCOL METHODS
extension PrimerFlujoRouter:PrimerFlujoRouterProtocol {
}
