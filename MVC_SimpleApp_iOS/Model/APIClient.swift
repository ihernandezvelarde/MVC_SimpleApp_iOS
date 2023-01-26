//
//  APIClient.swift
//  MVC_SimpleApp_iOS
//
//  Created by Irene on 26/1/23.
//

import Foundation

final class ListOfCharactersPIClient {
    
    func getListOfCharacters() async -> CharacterModelResponse{ //Función pasa sacar los datos desde la API que devolverá un CharacterModelResponse que es un array de tipo CharacterModel
        let url = URL(string: "https://rickandmortyapi.com/api/character")! //Generamos una URL donde vamos a hacer la petición
        let (data, _) = try! await URLSession.shared.data(from: url) // Hacemos la petición y una vez obtenemos los datos "data"
        return try! JSONDecoder().decode(CharacterModelResponse.self, from: data) //Parseamos los datos que hemos obtenido a un modelo de nuestro dominio.
    }
    
}
