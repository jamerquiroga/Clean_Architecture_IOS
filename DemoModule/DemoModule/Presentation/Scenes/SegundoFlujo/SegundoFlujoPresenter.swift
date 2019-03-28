//
//  SegundoFlujoPresenter.swift
//  DemoModule
//
//  Created by everis on 27/03/19.
//  Copyright © 2019 Jamer Quiroga. All rights reserved.
//

import Domain
import Data

protocol SegundoFlujoPresenterProtocol {
    func getNamesCount() -> Int
    func getLocalList() -> [String]
    func getProgrammingList()
}

class SegundoFlujoPresenter {
    
    private weak var view: SegundoFlujoViewControllerProtocol?
    
    private var router: SegundoFlujoRouterProtocol
    private var interactor: DummyUseCase
    private var viewData: ViewData2?
    private var nameList: [String] = []
    
    init(view: SegundoFlujoViewControllerProtocol, router:SegundoFlujoRouterProtocol, andData viewData:ViewData2?) {
        
        self.view = view //references to view
        self.router = router
        self.viewData = viewData
        self.interactor = DummyInteractor(with: DummyRepository())
        
    }
    
}

extension SegundoFlujoPresenter: SegundoFlujoPresenterProtocol{
    
    func getNamesCount() -> Int {
        return nameList.count
    }
    
    func getLocalList() -> [String] {
        return nameList
    }
    
    func getProgrammingList() {
        self.interactor.getProgrammingLanguageList { (response, error) -> (Void) in
            self.nameList = response!
            self.view?.refresh()
        }
    }
    
    
}


