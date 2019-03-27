//
//  PrimerFlujoPresenter.swift
//  Module
//
//  Created by Daniel Aragon Ore on 3/18/19.
//  Copyright (c) 2019 bcp. All rights reserved.
//

import Domain
import Data

protocol PrimerFlujoPresenterProtocol {
    func getNamesCount()->Int
    func jojoList()->[String]
    func getJojos()
}

class PrimerFlujoPresenter {
  
    private weak var view:PrimerFlujoViewControllerProtocol?
    private var router:PrimerFlujoRouterProtocol
    private var interactor: DummyUseCase
    private var viewData: ViewData?
    private var namesList: [String] = []
    init(view:PrimerFlujoViewControllerProtocol, router:PrimerFlujoRouterProtocol,andData viewData:ViewData?) {
        self.view = view
        self.router = router
        self.viewData = viewData
        self.interactor = DummyInteractor(with: DummyRepository())
    }

}

//MARK: PROTOCOL METHODS

extension PrimerFlujoPresenter: PrimerFlujoPresenterProtocol{
    func getNamesCount() -> Int {
        return namesList.count
    }
    func jojoList()->[String] {
        return namesList
    }
    func getJojos() {
        self.interactor.getJojoList { (response, error) -> (Void) in
            self.namesList = response!
            self.view?.refresh()
        }
    }
}
