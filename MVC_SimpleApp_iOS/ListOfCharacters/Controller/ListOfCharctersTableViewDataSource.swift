//
//  ListOfCharctersTableViewDataSource.swift
//  MVC_SimpleApp_iOS
//
//  Created by Irene on 28/1/23.
//

import Foundation
import UIKit

final class ListOfCharctersTableViewDataSource: NSObject, UITableViewDataSource {
    
    //Creamos referencia de la tableView de la vista que hemos creado en CharactersListView
    private let tableView: UITableView
    
    //Propiedad characters, el modelo que va a representar dentro de la tableView
    private(set) var characters: [CharacterModel] = [] {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    //Inicializador para poderlo crear desde el viewController
    init(tableView: UITableView, characters: [CharacterModel] = []) {
        self.tableView = tableView
        self.characters = characters
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterListViewCell", for: indexPath) as! CharacterListViewCell
        let character = characters[indexPath.row]
        cell.configure(character)
        return cell
    }
    
    func set(characters: [CharacterModel]){
        self.characters = characters
    }
    
}
