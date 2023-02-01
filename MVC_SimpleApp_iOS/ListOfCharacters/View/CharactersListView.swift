//
//  CharactersListView.swift
//  MVC_SimpleApp_iOS
//
//  Created by Irene on 27/1/23.
//

import Foundation
import UIKit

class CharactersListView: UIView {
    
    //Creamos la Table View
    let charactersTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        //Registramos la celda que debe utilizar esta table view
        tableView.register(CharacterListViewCell.self, forCellReuseIdentifier: "CharacterListViewCell")
        return tableView
    }()
    
    //Creamos los inicializadores
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    //Creamos los inicializadores
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //Metodo para añadir la table view y sus constraints.
    func setupView(){
        //añadimos tableView
        addSubview(charactersTableView)
        
        //Aplicamos las constraints
        NSLayoutConstraint.activate([
            charactersTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            charactersTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            charactersTableView.topAnchor.constraint(equalTo: topAnchor),
            charactersTableView.bottomAnchor.constraint(equalTo: bottomAnchor)

        ])
    }
    
}
