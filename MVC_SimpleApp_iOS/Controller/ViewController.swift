//
//  ViewController.swift
//  MVC_SimpleApp_iOS
//
//  Created by Irene on 26/1/23.
//

import UIKit

class ViewController: UIViewController {
    //Declaramos una variable que hará referencia a nuestra vista de tableView a la que llamaremos mainView
    var mainView: CharactersListView { self.view as! CharactersListView }
    
    //Declaramos otra variable que será de tipo APIClient para tener una instancia de esta y poder hacer peticiones a http
    var apiClient = ListOfCharactersPIClient()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Una vez se haya cargado nuestra vista haremos nuestra preticion a http
        Task {
            let characters = await apiClient.getListOfCharacters()
            print("Characters\(characters)")
        }
    }
    
    //Creamos la instancia de CharactersListView
    override func loadView() {
        view = CharactersListView()
    }


}

