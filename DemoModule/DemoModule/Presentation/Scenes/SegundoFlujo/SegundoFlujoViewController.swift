//
//  SegundoFlujoViewController.swift
//  DemoModule
//
//  Created by everis on 28/03/19.
//  Copyright © 2019 Jamer Quiroga. All rights reserved.
//

import UIKit

protocol SegundoFlujoViewControllerProtocol:class {
    func refresh()
}

class SegundoFlujoViewController: UIViewController {
    
    @IBOutlet weak var tbContainer: UITableView!
    
    var presenter: SegundoFlujoPresenterProtocol!
    var configurator = SegundoFlujoConfigurator()
    var viewData: ViewData2?
    
    var nameList:[String] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        self.configurator.configure(viewController: self)
        self.presenter.getProgrammingList()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

}

extension SegundoFlujoViewController: SegundoFlujoViewControllerProtocol{
    
    func refresh() {
        self.tbContainer.reloadData()
    }
}

extension SegundoFlujoViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.getNamesCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celdita = tableView.dequeueReusableCell(withIdentifier: "celdita", for: indexPath) as! CelditaTableViewCell
        
        celdita.lblName.text = presenter.getLocalList()[indexPath.row]
        return celdita
    }
    
    
}
