//
//  CharacterModel.swift
//  MVC_SimpleApp_iOS
//
//  Created by Irene on 26/1/23.
//

import Foundation

struct CharacterModel: Decodable {
    
    //Generamos estas constantes que será la información que contenga cada uno de los Characters.
    let name: String
    let status: String
    let species: String
    let image: String
    
}
