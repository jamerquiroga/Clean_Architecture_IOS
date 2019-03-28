//
//  PrimerFlujoConfigurator.swift
//  Module
//
//  Created by Daniel Aragon Ore on 3/18/19.
//  Copyright (c) 2019 bcp. All rights reserved.
//

import UIKit

protocol PrimerFlujoConfiguratorProtocol{
    func configure(viewController: PrimerFlujoViewController)
}

class PrimerFlujoConfigurator : PrimerFlujoConfiguratorProtocol {
    
    func configure(viewController: PrimerFlujoViewController) {
        
        viewController.presenter = PrimerFlujoPresenter(view:viewController,router:PrimerFlujoRouter(withView:viewController), andData:viewController.viewData)
        
    }
    
}
