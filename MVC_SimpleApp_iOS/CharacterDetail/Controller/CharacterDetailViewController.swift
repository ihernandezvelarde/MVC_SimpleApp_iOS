//
//  CharacterDetailViewController.swift
//  MVC_SimpleApp_iOS
//
//  Created by Irene on 1/2/23.
//

import Foundation
import UIKit

class CharacterDetailViewController: UIViewController {
    
    //Declaramos una variable que hará referencia a nuestra vista detalle a la que llamaremos mainView
    var mainView: CharacterDetailView { self.view as! CharacterDetailView }
    
    //Creamos los inicializadores
    init(characterDetailModel: CharacterModel) {
        super.init(nibName: nil, bundle: nil)
        mainView.configure(characterDetailModel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //Creamos la instancia de CharactersDetailView
    override func loadView() {
        view = CharacterDetailView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
