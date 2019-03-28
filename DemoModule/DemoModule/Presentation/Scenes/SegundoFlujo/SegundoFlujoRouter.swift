//
//  SegundoFlujoRouter.swift
//  DemoModule
//
//  Created by everis on 27/03/19.
//  Copyright © 2019 Jamer Quiroga. All rights reserved.
//

import UIKit

protocol SegundoFlujoRouterProtocol {
    
}

class SegundoFlujoRouter {
    
    weak var currentViewController:UIViewController?
    
    init(withView viewController:UIViewController) {
        self.currentViewController = viewController
    }

}

extension SegundoFlujoRouter:SegundoFlujoRouterProtocol{
    
}
