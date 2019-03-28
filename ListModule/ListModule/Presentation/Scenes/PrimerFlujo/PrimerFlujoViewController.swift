//
//  PrimerFlujoViewController.swift
//  Module
//
//  Created by Daniel Aragon Ore on 3/18/19.
//  Copyright (c) 2019 bcp. All rights reserved.
//

import UIKit

protocol PrimerFlujoViewControllerProtocol:class {
    func refresh()
}

class PrimerFlujoViewController : UIViewController{
  
    var presenter: PrimerFlujoPresenterProtocol!
    var configurator = PrimerFlujoConfigurator()
    var viewData: ViewData?
    @IBOutlet weak var tableView: UITableView!
    
    var namesList: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configurator.configure(viewController: self)
        
        self.presenter.getJojos()
    
    }
    
    override func viewWillAppear(_ animated:Bool) {
        super.viewWillAppear(animated)
    }
}

extension PrimerFlujoViewController:PrimerFlujoViewControllerProtocol{
    
    func refresh() {
        self.tableView.reloadData()
    }
}

extension PrimerFlujoViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.getNamesCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "JojoCell", for: indexPath) as! JojoTableViewCell
        cell.nameLabel.text = presenter.jojoList()[indexPath.row]
        return cell
    }
    
}
