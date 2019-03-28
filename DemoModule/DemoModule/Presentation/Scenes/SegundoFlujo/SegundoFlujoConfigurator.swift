//
//  SegundoFlujoConfigurator.swift
//  DemoModule
//
//  Created by everis on 27/03/19.
//  Copyright © 2019 Jamer Quiroga. All rights reserved.
//

import Foundation

protocol SegundoFlujoConfiguratorProtocol{
    func configure(viewController:SegundoFlujoViewController)
}

class SegundoFlujoConfigurator: SegundoFlujoConfiguratorProtocol {
    
    func configure(viewController: SegundoFlujoViewController) {
        
        viewController.presenter = SegundoFlujoPresenter(view: viewController, router: SegundoFlujoRouter(withView: viewController), andData: viewController.viewData)
        
    }
    
}
