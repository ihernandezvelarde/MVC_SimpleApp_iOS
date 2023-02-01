//
//  ListOfCharactersTableViewDelegate.swift
//  MVC_SimpleApp_iOS
//
//  Created by Irene on 28/1/23.
//

import Foundation
import UIKit

final class ListOfCharactersTableViewDelegate : NSObject, UITableViewDelegate {
    
    //Creamos una variable. Esta variable le daremos valor en la función de didSelectRowAt para que almacene el indexPath.row de cada celda pulsada
    var didTapOnCell: ((Int) -> Void)?
    
    //Este metodo se va a encargar de darle un height a nuestra tableView
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        didTapOnCell?(indexPath.row) //Llamamos a la propiedad que acabamos de crear y le pasamos la row.
    }
    
}
