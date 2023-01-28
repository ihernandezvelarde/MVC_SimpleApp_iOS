//
//  ListOfCharactersTableViewDelegate.swift
//  MVC_SimpleApp_iOS
//
//  Created by Irene on 28/1/23.
//

import Foundation
import UIKit

final class ListOfCharactersTableViewDelegate : NSObject, UITableViewDelegate {
    //Este metodo se va a encargar de darle un height a nuestra tableView
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
    
}
