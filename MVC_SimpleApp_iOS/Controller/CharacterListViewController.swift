//
//  ViewController.swift
//  MVC_SimpleApp_iOS
//
//  Created by Irene on 26/1/23.
//

import UIKit

class CharacterListViewController: UIViewController {
    //Declaramos una variable que hará referencia a nuestra vista de tableView a la que llamaremos mainView
    var mainView: CharactersListView { self.view as! CharactersListView }
    
    //Declaramos otra variable que será de tipo APIClient para tener una instancia de esta y poder hacer peticiones a http
    var apiClient = ListOfCharactersPIClient()
    
    private var tableViewDataSource : ListOfCharctersTableViewDataSource?
    private var tableViewDelegate : ListOfCharactersTableViewDelegate?

    
    //Creamos la instancia de CharactersListView
    override func loadView() {
        view = CharactersListView()
        tableViewDelegate = ListOfCharactersTableViewDelegate()
        
        tableViewDataSource = ListOfCharctersTableViewDataSource(tableView: mainView.charactersTableView)
        mainView.charactersTableView.dataSource = tableViewDataSource
        mainView.charactersTableView.delegate = tableViewDelegate

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Una vez se haya cargado nuestra vista haremos nuestra preticion a http
        Task {
            let characters = await apiClient.getListOfCharacters()
            print("Characters\(characters)")
            tableViewDataSource?.set(characters: characters.results)
        }
    }
    
    


}

